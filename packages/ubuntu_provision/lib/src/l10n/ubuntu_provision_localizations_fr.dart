import 'ubuntu_provision_localizations.dart';

/// The translations for French (`fr`).
class UbuntuProvisionLocalizationsFr extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsFr([String locale = 'fr']) : super(locale);

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
  String get timezonePageTitle => 'Sélectionnez votre fuseau horaire';

  @override
  String get timezoneLocationLabel => 'Localisation';

  @override
  String get timezoneTimezoneLabel => 'Fuseau horaire';

  @override
  String get keyboardTitle => 'Disposition du clavier';

  @override
  String get keyboardHeader => 'Indiquez la disposition de votre clavier :';

  @override
  String get keyboardTestHint => 'Saisissez du texte ici pour tester votre clavier';

  @override
  String get keyboardDetectTitle => 'Détecter la disposition du clavier';

  @override
  String get keyboardDetectButton => 'Détecter';

  @override
  String get keyboardVariantLabel => 'Variante du clavier :';

  @override
  String get keyboardPressKeyLabel => 'Veuillez appuyer sur l’une des touches suivantes :';

  @override
  String get keyboardKeyPresentLabel => 'Cette touche est-elle présente sur votre clavier ?';

  @override
  String get themePageTitle => 'Choisissez l’apparence';

  @override
  String get themePageHeader => 'Vous pourrez la changer ultérieurement dans les préférences d’apparence.';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeLight => 'Clair';

  @override
  String localePageTitle(Object DISTRO) {
    return 'Bienvenue à $DISTRO';
  }

  @override
  String get localeHeader => 'Choisissez votre langue :';

  @override
  String get identityPageTitle => 'Configurez votre compte';

  @override
  String get identityAutoLogin => 'Ouvrir la session automatiquement';

  @override
  String get identityRequirePassword => 'Demander mon mot de passe pour ouvrir une session';

  @override
  String get identityRealNameLabel => 'Votre nom';

  @override
  String get identityRealNameRequired => 'Votre nom est requis';

  @override
  String get identityRealNameTooLong => 'Ce nom est trop long.';

  @override
  String get identityHostnameLabel => 'Le nom de votre ordinateur';

  @override
  String get identityHostnameInfo => 'Le nom qu’il utilise pour communiquer avec d’autres ordinateurs.';

  @override
  String get identityHostnameRequired => 'Un nom pour l’ordinateur est requis';

  @override
  String get identityHostnameTooLong => 'Ce nom est trop long.';

  @override
  String get identityInvalidHostname => 'Ce nom d’ordinateur est invalide';

  @override
  String get identityUsernameLabel => 'Choisir un nom d’utilisateur';

  @override
  String get identityUsernameRequired => 'Un nom d’utilisateur est requis';

  @override
  String get identityInvalidUsername => 'Ce nom d’utilisateur est invalide';

  @override
  String get identityUsernameInUse => 'Ce nom d’utilisateur existe déjà.';

  @override
  String get identityUsernameSystemReserved => 'Ce nom est réservé pour le système.';

  @override
  String get identityUsernameTooLong => 'Ce nom est trop long.';

  @override
  String get identityUsernameInvalidChars => 'Ce nom contient des caractères invalides.';

  @override
  String get identityPasswordLabel => 'Choisir un mot de passe';

  @override
  String get identityPasswordRequired => 'Un mot de passe est requis';

  @override
  String get identityConfirmPasswordLabel => 'Confirmez votre mot de passe';

  @override
  String get identityPasswordMismatch => 'Les mots de passe ne correspondent pas';

  @override
  String get identityPasswordShow => 'Montrer';

  @override
  String get identityPasswordHide => 'Cacher';

  @override
  String get identityActiveDirectoryOption => 'Utiliser Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'Vous saisirez le domaine et d’autres détails à l’étape suivante.';

  @override
  String get activeDirectoryTitle => 'Configurer Active Directory';

  @override
  String get activeDirectoryTestConnection => 'Tester la connectivité au domaine';

  @override
  String get activeDirectoryDomainLabel => 'Domaine';

  @override
  String get activeDirectoryDomainEmpty => 'Obligatoire';

  @override
  String get activeDirectoryDomainTooLong => 'Trop long';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caractères non valides';

  @override
  String get activeDirectoryDomainStartDot => 'Commence par un point (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Se termine par un point (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Commence par un trait d’union (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Se termine par un trait d’union (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Contient deux points adjacents (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domaine introuvable';

  @override
  String get activeDirectoryAdminLabel => 'Nom d’utilisateur pour rejoindre le domaine';

  @override
  String get activeDirectoryAdminEmpty => 'Obligatoire';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caractères non valides';

  @override
  String get activeDirectoryPasswordLabel => 'Mot de passe';

  @override
  String get activeDirectoryPasswordEmpty => 'Obligatoire';

  @override
  String get activeDirectoryErrorTitle => 'Erreur lors de la configuration de la connexion à Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Désolé, Active Directory ne peut pas être configuré pour le moment. Une fois que votre système est opérationnel, consultez <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> pour obtenir de l’aide.';

  @override
  String get networkPageTitle => 'Se connecter à un réseau';

  @override
  String get networkPageHeader => 'Connecter cet ordinateur à internet aidera Ubuntu à installer des logiciels supplémentaires et à déterminer votre fuseau horaire.\n\nConnectez un câble Ethernet, ou choisissez un réseau Wi-Fi';

  @override
  String get networkWiredOption => 'Utiliser une connexion câblée';

  @override
  String get networkWiredNone => 'Aucune connexion câblée détectée';

  @override
  String get networkWiredOff => 'La connexion câblée est désactivée';

  @override
  String get networkWiredDisabled => 'Pour utiliser Ethernet sur cet ordinateur, une connexion câblée doit être activée';

  @override
  String get networkWiredEnable => 'Activer une connexion câblée';

  @override
  String get networkWifiOption => 'Se connecter à un réseau Wi-Fi';

  @override
  String get networkWifiOff => 'Le réseau sans fil est désactivé';

  @override
  String get networkWifiNone => 'Aucun périphérique Wi-Fi détecté';

  @override
  String get networkWifiDisabled => 'Pour utiliser le Wi-Fi sur cet ordinateur, cette fonctionnalité doit être activée';

  @override
  String get networkWifiEnable => 'Activer le Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Se connecter à un réseau Wi-Fi caché';

  @override
  String get networkHiddenWifiNameLabel => 'Nom du réseau';

  @override
  String get networkHiddenWifiNameRequired => 'Un nom de réseau est requis';

  @override
  String get networkNoneOption => 'Je ne souhaite pas me connecter à internet pour l’instant';
}
