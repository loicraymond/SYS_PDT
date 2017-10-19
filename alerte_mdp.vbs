'
' Nom : Alerte avant Expiration du mot de passe
' Description : Message d'information indiquant aux utilisateurs que leur mot de passe va bientôt expirer et qu'il doivent le changer
' Date : 13/10/2017
'

Dim domaine
Dim utilisateur
Dim maxPwdAge
Dim jours_nombre
Dim jours_alerte
date_jour = Date

' Je défini le nombre de jours avant l'affichage du message d'alerte
jours_alerte = 18000

' Je récupère les informations dans l'Active Directory
Set login = CreateObject("ADSystemInfo")  
GetObject("LDAP://" & login.UserName & "") 
DN_domaine = UCase(login.DomainDNSName) 
DN_utilisateur = login.UserName
Set utilisateur = GetObject("LDAP://" & DN_utilisateur)
Set domaine = GetObject("LDAP://" & DN_domaine)
Set maxPwdAge = domaine.Get("maxPwdAge")

' Calcul du nombre de jours restant en fonction de la durée de validité du mot de passe
jours_nombre = CCur((maxPwdAge.HighPart * 2 ^ 32) + maxPwdAge.LowPart) / CCur(-864000000000)

' Calcul de la date d'expiration du mot de passe
mdp_expiration = DateAdd("d", jours_nombre, utilisateur.PasswordLastChanged)

' Calcul du nombre de jours restants
jours_restants = DateDiff("d",date_jour,mdp_expiration)

if(jours_restants < jours_alerte) and (jours_restants > -1) then
    Msgbox "Votre mot de passe expire dans " & jours_restants & " jours." & chr(13) & chr(13) & "Pour le modifier, appuyez sur les touches CTRL+ALT+SUPPR", vbOkOnly+vbExclamation, "Expiration du mot de passe"
End if