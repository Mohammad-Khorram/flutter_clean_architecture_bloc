import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/enumeration/enumeration.dart';
import 'package:store/feature/user/profile/presentation/widget/profile_item.dart';

class ProfileView extends StatelessWidget {
  // constant
  static const String route = '/user/profile';

  // models
  final List<ProfileItemModel> profileItemList = [];

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => ProfileCubit(profileUseCase: injectionInstance())),
        BlocProvider(create: (_) => InjectionCore.instance<UserCubit>()),
      ],
      child: Builder(builder: (context) {
        _initData(context);
        return Scaffold(appBar: appBar(), body: body());
      }),
    );
  }

  /// get profile data from api
  Future<void> _initData(BuildContext context) async {
    BlocProvider.of<ProfileCubit>(context).getProfile(context);
  }

  /// handle profile items
  void profileSuccessListener(ProfileDataStatus status) {
    final ProfileSuccess profileSuccess = status as ProfileSuccess;
    final ProfileResponseEntity entity = profileSuccess.profileResponseEntity;

    profileItemList.addAll([
      ProfileItemModel(
        title: 'profileFullName'.tr,
        value: '${entity.name!.firstName!} ${entity.name!.lastName!}',
      ),
      ProfileItemModel(
        title: 'profileUserName'.tr,
        value: entity.userName!,
      ),
      ProfileItemModel(title: 'profileEmail'.tr, value: entity.email!),
      ProfileItemModel(
        title: 'profilePhone'.tr,
        value: entity.phone!,
        type: ItemDividerType.separator,
      ),
    ]);
  }

  /// handle fake signOut (signOut is only effect as local with Future.delayed)
  void _signOut(BuildContext context) {
    BlocProvider.of<ProfileCubit>(context)
        .setLoadingToSignOut(profileDataStatus: ProfileLoading());

    Future.delayed(DurationConfig.second1, () {
      InjectionCore.instance<UserCubit>().login(false);
      InjectionCore.instance<UserCore>().deleteToken();
      Get.back();
    });
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: 'profileTitle'.tr),
      leading: AppBarWidget().backAction(),
    );
  }

  Widget body() {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (previousState, currentState) =>
          previousState.profileDataStatus != currentState.profileDataStatus,
      buildWhen: (previousState, currentState) =>
          previousState.profileDataStatus != currentState.profileDataStatus,
      listener: (context, status) {
        if (status.profileDataStatus is ProfileSuccess) {
          profileSuccessListener(status.profileDataStatus);
        }
      },
      builder: (context, status) {
        switch (status.profileDataStatus) {
          case ProfileConnectionError():
            return ShowErrorCore.connectionErrorView(
                onTap: () => _initData(context));

          case ProfileLoading():
            return LoadingWidget().circular();

          case ProfileSuccess():
            return profileSuccessBuilder(
              context: context,
              status: status.profileDataStatus,
            );

          case ProfileFailure():
            return profileFailureBuilder(
              context: context,
              status: status.profileDataStatus,
            );

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  /// handle UI when has success
  Widget profileSuccessBuilder({
    required BuildContext context,
    required ProfileDataStatus status,
  }) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            itemCount: profileItemList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                ProfileItem(model: profileItemList[index]),
          ),
          signOut(context),
        ],
      ),
    );
  }

  /// handle UI when has error
  Widget profileFailureBuilder({
    required BuildContext context,
    required ProfileDataStatus status,
  }) {
    final ProfileFailure profileFailure = status as ProfileFailure;

    return ShowErrorCore.exceptionErrorView(
      message: profileFailure.exception.message,
      onTap: () => _initData(context),
    );
  }

  Widget signOut(BuildContext context) {
    return InkWell(
      onTap: () => _signOut(context),
      child: Padding(
        padding: SpacingConfig.s16All,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('profileSignOut'.tr, style: TextStyleConfig.profileTitle),
            Icon(Ionicons.log_out_outline, size: SizeConfig.s20.r),
          ],
        ),
      ),
    );
  }
}
