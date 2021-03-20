Ce repository contient différents fichiers de configuration permettant le déploiement de Postes De Travail au sein d'une entreprise.

**Java :**
- *DisableJavaUpdate_32bits.reg* : Désactivation des mises à jour Java pour une architecture Windows 32 bits
- *DisableJavaUpdate_64bits.reg* : Désactivation des mises à jour Java pour une architecture Windows 64 bits
- *DisableHibernation.reg* : Désactive la mise en veille prolongée
- *DisableUpdateDelivery.reg* : Désactive le partage de mises à jour de Windows 10

**Microsoft Office :**
- *Excel2010_separate_windows.reg* : Ouverture des fichiers Excel dans des fenêtres séparées
- *Office2013_EnableADAL.reg* : Activation de l'authentification Moderne pour Office 2013

**Windows :**
- *AutoConfigProxy.reg* : Mise en place du script de configuration automatique du proxy
- *DisableAutorun.reg* : Désactivation des autorun présents sur tous les supports (CD/DVD, USB ...)
- *DisableCortana.reg* : Désactivation de Cortana
- *DisableHibernate.reg* : Désactivation de l'hibernation
- *DisableSMB.reg* : Désactive les protocoles SMB versions 1 et 2
- *DisableUAC.reg* : Désactive le Contrôle de Compte Utilisateur (User Account Control)
- *DisableUpdateDelivery.reg* : Désactive l'optimisation de la distribution des mises à jours Windows 10
- *DisableWSUS.reg* : Désactive l'utilisation de WSUS sur un poste de travail
- *EnableSSO.reg* : Active la prise en charge du SSO 
- *EnableVerrNum.reg* : Verrouillage automatique du pavé numérique
- *Reset_WSUS_Client.bat* : Réinitialisation des identifiants du client WSUS
- *SupportInformations.reg* : Mise en place d'informations constructeur/modèle/support dans les informations système de Windows
- *UseWindowsUpdateServer.reg* : Configuration de Windows Update pour l'utilisation d'un serveur WSUS
