
push (@languages, 'fr');


##################################################################
###   fr = Fran�ais

#-------------------------------
$msgtxt{'1fr'} = <<_EOF_ ;
Ceci est un message du gestionnaire de liste de diffusion Minimalist.

Les commandes peuvent �tre envoy�es dans le sujet de votre message
(une commande par message) ou dans le corps du message (une ou plusieurs
commandes par message, une commande par ligne).
L'execution de commandes batch se fait lorsque le sujet est vide ou
contient la commande 'body' (sans les guillemets) et s'arrete lorsque
la commande 'stop' ou 'exit' est pr�cis�e, ou apr�s 10 commandes
incorrectes succ�ssives.

Liste des commandes diponibles:

subscribe <list> [<email>] :
    S'abonner � la liste <list>. Si <list> est suivi de '-writers', 
    l'utilisateur pourra �crire � cette liste, mais pas re�evoir de
    messages. <email> sp�cifie une adresse electronique diff�rente
    de celle utilis�e pour envoyer le message.

unsubscribe <list> [<email>] :
    Se d�sabonner de la liste <list>. Peut �tre suivi de '-writers'
    (voir la description de subscribe). <email> sp�cifie l'adresse
    electronique associ�e � l'abonnement (l'adresse de l'utilisateur
    par d�faut).

auth <code> :
    Commande de confirmation, utilis�e en r�ponse � une demande
    d'abonnement dans certains cas.
    Cette commande ne peut �tre utilis�e qu'en r�ponse � une requ�te
    de Minimalist.

mode <list> <email> <mode> :
    D�finir un mode pour un utilisateur d'une liste. Cette commande
    est r�serv�e aux administrateurs. Les diff�rents modes sont:
      * 'reader' - l'utilisateur dispose d'un acc�s en lecture seule
      * 'writer' - l'utilisateur peut poster des messages
      * 'usual' - utilise le mode par d�faut de la liste
      * 'suspend' - d�sactive l'abonnement
      * 'resume' - r�active l'abonnement
      * 'maxsize <size>' - fixe la taille maximale (en octets) des
                           messages que l'utilisateur peut re�evoir
      * 'reset' - r�initialise la configuration de l'utilisateur

suspend <list> :
    Ne plus re�evoir de messages de la liste <list>

resume <list> :
    Re�evoir � nouveau les messages de la liste <list>

maxsize <list> <size> :
    Fixe la taille maximale (en octets) des messages que l'on souhaite
    re�evoir de la liste <list>

which [<email>] :
    Retourne la liste des abonnement de l'utilisateur

info [<list>] :
    Retourne les informations d'une/des liste(s)

who <list> :
    Retourne la liste des utilisateurs abonn�s � la liste <list>.
    Cette commande est r�serv�e aux administrateurs.

help :
    Ce message

Note, les commandes r�serv�es aux administrateurs (utilisateurs identifi�s
par leur adresse electronique, et authentifi�s par mot de passe) sont ignor�es
pour les autres utilisateurs.
Le mot de passe doit �tre pr�cis� dans le sujet du message sous la forme:

{pwd: list_password}

Exemple:

To: MML Discussion {pwd: password1235} <mml-general\@kiev.sovam.com>

Le mot de passe sera ensuite supprim� du sujet avant d'�tre envoy� par
Minimalist aux abonn�s.
_EOF_

#-------------------------------
$msgtxt{'2fr'} = "ERREUR:\n\tVous";
$msgtxt{'3fr'} = "n'�tes pas abonn� � cette liste.\n\n".
		 "SOLUTION:\n\tEnvoyez un message �";
$msgtxt{'4fr'} = "avec le sujet\n\t'help' (sans guillemets) pour informations.\n\n".
		 "Votre message:";
#-------------------------------
$msgtxt{'5fr'} = "ERREUR:\n\tVous";
$msgtxt{'5.1fr'} = "n'�tes pas authoris� � poster sur cette liste.\n\nVotre message:";
#-------------------------------
$msgtxt{'6fr'} = "ERREUR:\n\tTaille du message trop grande ( max ";
$msgtxt{'7fr'} = "octets ).\n\nSOLUTION:\n\tEnvoyez un plus petit message ou d�coupez votre message en\n\tplusieurs petits messages.\n\n".
		 "===========================================================================\n".
		 "Votre message:";
#-------------------------------
$msgtxt{'8fr'} = "\nERREUR:\n\tIl n'y � pas d'authentification avec ce code: ";
$msgtxt{'9fr'} = "\n\nSOLUTION:\n\tRenvoy�s votre requ�te � Minimalist.\n";

#-------------------------------
$msgtxt{'10fr'} = "\nERREUR:\n\tVous n'�tes pas authoris� � re�evoir les abonnements des autres utilisateurs.\n".
		  "\nSOLUTION:\n\tAucune.";
#-------------------------------
$msgtxt{'11fr'} = "\nAbonnements en cours pour l'utilisateur ";
#-------------------------------
$msgtxt{'12fr'} = "\nERREUR:\n\tCette liste n'existe pas";
$msgtxt{'13fr'} = "here.\n\nSOLUTION:\n\tEnvoyez un message �";
$msgtxt{'14fr'} = "avec le sujet\n\t'info' (sans guillements).\n";
#-------------------------------
$msgtxt{'15fr'} = "\nERREUR:\n\tVous n'�tes pas authoris� � abonner d'autres personnes.\n".
		  "\nSOLUTION:\n\tAucune.";
#-------------------------------
$msgtxt{'16fr'} = "\nERREUR:\n\tD�sol�, cette liste est ferm�e pour vous.\n".
		  "\nSOLUTION:\n\tUne erreur? Faites une r�clamation � ";
#-------------------------------
$msgtxt{'17fr'} = "\nERREUR:\n\tD�sol�, cette liste est obligatoire pour vous.\n".
		  "\nSOLUTION:\n\tUne erreur? Faites une r�clamation � ";
#-------------------------------
$msgtxt{'18fr'} = "Votre requ�te";
$msgtxt{'19fr'} = "Vous devez �tre authentifi�. Envoyez une nouvelle requ�te �";
$msgtxt{'20fr'} = "(ou r�pondez � ce courrier)\navec le sujet suivant:";
$msgtxt{'21fr'} = "Votre authentification est valide pour quelques heures\n";
$msgtxt{'22fr'} = "et sera ensuite annul�e.\n";
#-------------------------------
$msgtxt{'23fr'} = "\nVoici les informations disponible sur";
#-------------------------------
$msgtxt{'24fr'} = "\nVoici la liste des diffusions disponibles sur";
#-------------------------------
$msgtxt{'25fr'} = "\nUtilisateur abonn�s �";
$msgtxt{'25.1fr'} = "\nTotale: ";
#-------------------------------
$msgtxt{'26fr'} = "\nERREUR:\n\tVous n'�tes pas authoris� � re�evoir cette liste.";
#-------------------------------
$msgtxt{'27.0fr'} = "Erreur de syntaxe ou commande inconnue";
$msgtxt{'27fr'} = "\nERREUR:\n\t".$msgtxt{'27.0en'}.".\n\nSOLUTION:\n\n".$msgtxt{'1en'};
#-------------------------------
$msgtxt{'28fr'} = "Cordialement, le gestionnaire Minimalist.";
#-------------------------------
$msgtxt{'29fr'} = "Vous �tes d�j� abonn� �";
#-------------------------------
$msgtxt{'30fr'} = "Le nombre maximum d'abonn�s est atteint (";
#-------------------------------
$msgtxt{'31fr'} = "Vous �tes abonn� �";
$msgtxt{'32fr'} = "avec succ�s.\n\nVeuillez noter ceci:\n";
#-------------------------------
$msgtxt{'33fr'} = "Vous n'�tes pas abonn� �";
$msgtxt{'34fr'} = "pour la raison suivante";
$msgtxt{'35fr'} = "Pour tout commentaire ou question, veuillez �crire �\nl'administrateur";
#-------------------------------
$msgtxt{'36fr'} = "\nUtilisateur ";
$msgtxt{'37fr'} = " s'est d�sabonn� avec succ�s.\n";
#-------------------------------
$msgtxt{'38fr'} = "\nErreur interne; l'administrateur � �t� inform�.".
		  "\nVeuillez noter que l'abonnement pour ";
$msgtxt{'38.1fr'} = " est inchang� sur ";
#-------------------------------
$msgtxt{'39fr'} = " n'est pas enregistr� sur cette liste.\n";
#-------------------------------
$msgtxt{'40fr'} = "\nBonjour";
#-------------------------------
$msgtxt{'41fr'} = "\nParam�tres pour l'utilisateur ";
$msgtxt{'42fr'} = " sur la liste ";
$msgtxt{'43fr'} = " il n'y � pas de param�tres particuliers";
$msgtxt{'43.1fr'} = " envoi authoris�";
$msgtxt{'43.2fr'} = " envoi non authoris�";
$msgtxt{'43.3fr'} = " abonnement d�sactiv�";
$msgtxt{'43.4fr'} = " taille maximum des messages de ";
#-------------------------------
$msgtxt{'44fr'} = "\nERREUR:\n\tVous n'�tes pas authoris� � changer ces param�tres.\n".
		  "\nSOLUTION:\n\tAucune.";


