import 'ubuntu_provision_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class UbuntuProvisionLocalizationsEs extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String accessibilityPageTitle(Object DISTRO) {
    return 'Accessibility in $DISTRO';
  }

  @override
  String accessibilityPageBody(Object DISTRO) {
    return 'Customise $DISTRO to your needs before you set up. You can change them later in System Settings.';
  }

  @override
  String get accessibilitySeeingLabel => 'Seeing';

  @override
  String get accessibilityHearingLabel => 'Hearing';

  @override
  String get accessibilityTypingLabel => 'Typing';

  @override
  String get accessibilityPointingLabel => 'Pointing and clicking';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'High contrast';

  @override
  String get accessibilityLargeTextLabel => 'Large text';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'Screen reader';

  @override
  String get accessibilityVisualAlertsLabel => 'Visual alerts';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Slow keys';

  @override
  String get accessibilityMouseKeysLabel => 'Mouse keys';

  @override
  String get accessibilityDesktopZoomLabel => 'Desktop zoom';

  @override
  String get errorPageTitle => 'Something went wrong';

  @override
  String get errorPageUnexpected => 'An unexpected error has occurred';

  @override
  String get timezonePageTitle => 'Selecciona tu zona horaria';

  @override
  String get timezoneLocationLabel => 'Ubicación';

  @override
  String get timezoneTimezoneLabel => 'Huso horario';

  @override
  String get keyboardTitle => 'Distribución del teclado';

  @override
  String get keyboardHeader => 'Elija la distribución del teclado:';

  @override
  String get keyboardTestHint => 'Escriba aquí para probar el teclado';

  @override
  String get keyboardDetectTitle => 'Detectar la distribución del teclado';

  @override
  String get keyboardDetectButton => 'Detectar';

  @override
  String get keyboardVariantLabel => 'Variante del teclado:';

  @override
  String get keyboardPressKeyLabel => 'Pulse una de estas teclas:';

  @override
  String get keyboardKeyPresentLabel => '¿Está presente la siguiente tecla en su teclado?';

  @override
  String get themePageTitle => 'Elige tu tema';

  @override
  String get themePageHeader => 'Puede cambiarlo después en la configuración de apariencia.';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeLight => 'Claro';

  @override
  String localePageTitle(Object DISTRO) {
    return 'Bienvenido a $DISTRO';
  }

  @override
  String get localeHeader => 'Elija su idioma:';

  @override
  String get identityPageTitle => 'Crea tú cuenta';

  @override
  String get identityAutoLogin => 'Acceder automáticamente';

  @override
  String get identityRequirePassword => 'Solicitar mi contraseña para acceder';

  @override
  String get identityRealNameLabel => 'Su nombre';

  @override
  String get identityRealNameRequired => 'Se necesita un nombre';

  @override
  String get identityRealNameTooLong => 'Este nombre es demasiado largo.';

  @override
  String get identityHostnameLabel => 'El nombre del equipo';

  @override
  String get identityHostnameInfo => 'El nombre que utiliza al comunicarse con otros equipos.';

  @override
  String get identityHostnameRequired => 'Se necesita un nombre de equipo';

  @override
  String get identityHostnameTooLong => 'El nombre del ordenador es demasiado largo.';

  @override
  String get identityInvalidHostname => 'El nombre del equipo no es válido';

  @override
  String get identityUsernameLabel => 'Elija un nombre de usuario';

  @override
  String get identityUsernameRequired => 'Se necesita un nombre de usuario';

  @override
  String get identityInvalidUsername => 'El nombre de usuario no es válido';

  @override
  String get identityUsernameInUse => 'Ese nombre de usuario ya existe.';

  @override
  String get identityUsernameSystemReserved => 'Ese nombre está reservado para uso del sistema.';

  @override
  String get identityUsernameTooLong => 'Ese nombre es demasiado extenso.';

  @override
  String get identityUsernameInvalidChars => 'Ese nombre contiene caracteres no válidos.';

  @override
  String get identityPasswordLabel => 'Elija una contraseña';

  @override
  String get identityPasswordRequired => 'Se requiere una contraseña';

  @override
  String get identityConfirmPasswordLabel => 'Confirme su contraseña';

  @override
  String get identityPasswordMismatch => 'Las contraseñas no coinciden';

  @override
  String get identityPasswordShow => 'Mostrar';

  @override
  String get identityPasswordHide => 'Ocultar';

  @override
  String get identityActiveDirectoryOption => 'Utilizar el directorio activo';

  @override
  String get identityActiveDirectoryInfo => 'En el siguiente paso introducirá el dominio y otros datos.';

  @override
  String get activeDirectoryTitle => 'Configurar el directorio activo';

  @override
  String get activeDirectoryTestConnection => 'Probar la conexión del dominio';

  @override
  String get activeDirectoryDomainLabel => 'Dominio';

  @override
  String get activeDirectoryDomainEmpty => 'Obligatorio';

  @override
  String get activeDirectoryDomainTooLong => 'Demasiado largo';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caracteres incorrectos';

  @override
  String get activeDirectoryDomainStartDot => 'Empieza por punto (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Termina en punto (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Empieza por guión (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Termina en guión (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Contiene múltiples puntos (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Dominio no encontrado';

  @override
  String get activeDirectoryAdminLabel => 'Usuario uniendose al dominio';

  @override
  String get activeDirectoryAdminEmpty => 'Obligatorio';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caracteres incorrectos';

  @override
  String get activeDirectoryPasswordLabel => 'Contraseña';

  @override
  String get activeDirectoryPasswordEmpty => 'Obligatorio';

  @override
  String get activeDirectoryErrorTitle => 'Error al configurar la conexión con Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Lo sentimos, Active Directory no se puede configurar en este momento. Una vez que el sistema esté en funcionamiento, visite <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> para obtener ayuda.';

  @override
  String get networkPageTitle => 'Conectarse a una red';

  @override
  String get networkPageHeader => 'Conectar este equipo a Internet ayudará a Ubuntu a instalar cualquier software adicional necesario y ayudará a elegir su zona horaria.\n\nConectar por cable Ethernet, o elegir una red Wi-Fi';

  @override
  String get networkWiredOption => 'Utilizar conexión por cable';

  @override
  String get networkWiredNone => 'No se ha detectado una conexión por cable';

  @override
  String get networkWiredOff => 'La conexión por cable está desactivada';

  @override
  String get networkWiredDisabled => 'Para utilizar Ethernet en este ordenador, debe activarse una conexión por cable';

  @override
  String get networkWiredEnable => 'Activar por cable';

  @override
  String get networkWifiOption => 'Conectarse a una red Wi-Fi';

  @override
  String get networkWifiOff => 'Red inalámbrica desactivada';

  @override
  String get networkWifiNone => 'No se han detectado dispositivos Wi-Fi';

  @override
  String get networkWifiDisabled => 'Para utilizar Wi-Fi en este equipo, la red inalámbrica debe estar activada';

  @override
  String get networkWifiEnable => 'Activar Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Conectarse a una red Wi-Fi oculta';

  @override
  String get networkHiddenWifiNameLabel => 'Nombre de la red';

  @override
  String get networkHiddenWifiNameRequired => 'Se requiere un nombre de red';

  @override
  String get networkNoneOption => 'No quiero conectarme a internet ahora mismo';
}
