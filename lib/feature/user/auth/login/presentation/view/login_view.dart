import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  static const String route = '/user/auth/login';

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String defaultUserName = 'mor_2314';
  String defaultPassword = '83r5^_';
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController()..text = defaultUserName;
    passwordController = TextEditingController()..text = defaultPassword;
  }

  @override
  Widget build(BuildContext mainContext) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => LoginCubit(loginUseCase: injectionInstance())),
        BlocProvider(create: (_) => InjectionCore.instance<UserCubit>()),
        BlocProvider(create: (_) => TogglePasswordVisibilityCubit()),
      ],
      child: Scaffold(appBar: appBar(), body: body()),
    );
  }

  /// handle password visibility
  void _togglePasswordVisibility(BuildContext context) =>
      BlocProvider.of<TogglePasswordVisibilityCubit>(context).toggle();

  /// not_implemented
  void _navigateToForgetPass({required LoginDataStatus status}) {
    /*if (status is LoginLoading) {
      return;
    }

    Get.toNamed(RouteConfig.forgetPass);*/
  }

  /// not_implemented
  void _navigateToRegister({required LoginDataStatus status}) {
    /*if (status is LoginLoading) {
      return;
    }

    Get.toNamed(RouteConfig.register);*/
  }

  /// handle user login
  void _login(context) async {
    if (!await hasConnection(context)) {
      return;
    }

    LoginRequestModel loginRequestModel = LoginRequestModel(
        username: userNameController.text, password: passwordController.text);

    BlocProvider.of<LoginCubit>(context)
        .login(loginRequestModel: loginRequestModel);
  }

  /// handle user login response when throw error
  void _loginErrorListener({required LoginDataStatus status}) {
    final LoginFailure loginFailure = status as LoginFailure;
    ShowErrorCore.generalErrorSnackBar(
        context: context, message: loginFailure.exception.message);
  }

  /// handle user login response when success
  void _loginSuccessListener({required LoginDataStatus status}) {
    final LoginSuccess loginSuccess = status as LoginSuccess;
    final LoginResponseEntity loginResponseEntity =
        loginSuccess.loginResponseEntity;

    InjectionCore.instance<UserCore>()
        .saveToken(token: loginResponseEntity.token!);
    InjectionCore.instance<UserCubit>().login(true);
    Get.back();
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: ''),
      hasBackAction: true,
    );
  }

  Widget body() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: SpacingConfig.s24All,
      child: BlocConsumer<LoginCubit, LoginState>(
        listenWhen: (previousState, currentState) =>
            previousState.loginDataStatus != currentState.loginDataStatus,
        buildWhen: (previousState, currentState) =>
            previousState.loginDataStatus != currentState.loginDataStatus,
        listener: (context, status) {
          if (status.loginDataStatus is LoginLoading) {
            return;
          }

          if (status.loginDataStatus is LoginFailure) {
            _loginErrorListener(status: status.loginDataStatus);
            return;
          }

          if (status.loginDataStatus is LoginSuccess) {
            _loginSuccessListener(status: status.loginDataStatus);
          }
        },
        builder: (context, status) {
          return Column(
            children: [
              SizedBox(height: SizeConfig.s20.r),
              title(),
              SizedBox(height: SizeConfig.s92.r),
              userName(status.loginDataStatus),
              SizedBox(height: SizeConfig.s16.r),
              password(status.loginDataStatus),
              SizedBox(height: SizeConfig.s16.r),
              forgetPass(status.loginDataStatus),
              SizedBox(height: SizeConfig.s44.r),
              action(context: context, status: status.loginDataStatus),
              SizedBox(height: SizeConfig.s20.r),
              registerHint(status.loginDataStatus),
            ],
          );
        },
      ),
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Ionicons.storefront,
          color: ColorConfig.primary,
          size: SizeConfig.s32.r,
        ),
        SizedBox(width: SizeConfig.s14.r),
        Text('appName'.tr, style: TextStyleConfig.loginTitle),
      ],
    );
  }

  Widget userName(LoginDataStatus status) {
    return TextFormFieldWidget(
      controller: userNameController,
      labelText: 'loginUsername'.tr,
      textInputAction: TextInputAction.next,
      readOnly: status is LoginLoading,
    );
  }

  Widget password(LoginDataStatus status) {
    return BlocBuilder<TogglePasswordVisibilityCubit, bool>(
      builder: (context, passwordVisibility) {
        return Stack(
          alignment: Alignment.centerRight,
          textDirection: TextDirection.ltr,
          children: [
            TextFormFieldWidget(
              controller: passwordController,
              labelText: 'loginPassword'.tr,
              obscureText: !passwordVisibility,
              textInputAction: TextInputAction.done,
              readOnly: status is LoginLoading,
            ),
            Padding(
              padding: SpacingConfig.s08Horizontal,
              child: SizedBox(
                width: SizeConfig.s32.r,
                height: SizeConfig.s32.r,
                child: InkWell(
                  onTap: () => _togglePasswordVisibility(context),
                  borderRadius: RadiusConfig.r07All,
                  child: Icon(
                    passwordVisibility ? Ionicons.eye_outline : Ionicons.eye,
                    size: SizeConfig.s16.r,
                    color: ColorConfig.color100,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget forgetPass(LoginDataStatus status) {
    return GestureDetector(
      onTap: () => _navigateToForgetPass(status: status),
      child: Align(
        alignment: 'direction'.tr == 'ltr'
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Text('forgetPass'.tr, style: TextStyleConfig.loginForgetPass),
      ),
    );
  }

  Widget action({
    required BuildContext context,
    required LoginDataStatus status,
  }) {
    return ElevatedActionWidget().elevatedAction(
      title: 'loginAction'.tr,
      action: () => _login(context),
      loading: status is LoginLoading,
    );
  }

  Widget registerHint(LoginDataStatus status) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'loginRegisterHint1'.tr,
          style: TextStyleConfig.loginRegisterHint1,
        ),
        GestureDetector(
          onTap: () => _navigateToRegister(status: status),
          child: Text(
            'loginRegisterHint2'.tr,
            style: TextStyleConfig.loginRegisterHint2,
          ),
        ),
      ],
    );
  }

  /// handle internet connection status
  Future<bool> hasConnection(BuildContext context) async {
    return await InjectionCore.instance<ConnectionCore>()
        .hasConnection(context);
  }
}
