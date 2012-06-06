push (@languages, 'ES');

##################################################################
###   ES = Spanish
###
###   Added by Fernando S�nchez <fer@debian.org>

#-------------------------------
$msgtxt{'1ES'} = <<_EOF_ ;
Este es el Gestor de Listas de Correo Minimalist.

Las instrucciones pueden indicarse en el tema del mensaje (una instrucci�n
por mensaje) o en el contenido (una o varias instrucciones, una por l�nea).
Se procesar�n las instrucciones del contenido del mensaje si el tema 
est� vac�o o contiene la instrucci�n "body" (sin las comillas), y se dejar�n
de procesar cuando se encuentre la instrucci�n "stop" o "exit" (sin
comillas), o se procesen 10 instrucciones incorrectas.

Las instrucciones permitidas son:

subscribe <lista> [<email>] :
    Suscribe el usuario a <lista>. Si <lista> contiene el sufijo
    "-writers", el usuario podr� escribir en la lista, pero no recibir
    mensajes de ella.

unsubscribe <lista> [<email>] :
    Elimina al usuario de la lista <lista>. Se puede utilizar con el sufijo
    "-writers" (ver descripci�n de la instrucci�n "subscribe")

auth <c�digo> :
    Instrucci�n de confirmaci�n, utilizada como respuesta a una petici�n de
    suscripci�n en ciertas ocasiones. Esta instrucci�n no se utiliza de forma
    independiente, sino que debe usarse como respuesta a una petici�n de
    Minimalist.

mode <lista> <email> <modo> :
    Selecciona el modo para el usuario y lista especificados. S�lo se
    permite el uso de esta instrucci�n al administrador. El <modo> puede
    ser (sin comillas):
      * "reader" - acceso de s�lo lectura para el usuario en esa lista;
      * "writer" - el usuario puede enviar mensajes a la lista sin que importe
                   el estado de �sta
      * "usual" -  limpia cualquiera de los dos modos anteriores
      * "suspend" - suspende la suscripci�n del usuario
      * "resume" - reactiva una suscripci�n previamente suspendida
      * "maxsize <tama�o>" - fija el tama�o m�ximo (en bytes) de los
                             mensajes que el usuario desea recibir
      * "reset" - limpia todos los modos para el usuario especificado

suspend <lista> :
    Dejar de recibir mensajes de la lista de correo especificada

resume <lista> :
    Volver a recibir mensajes de la lista de correo especificada

maxsize <lista> <tama�o> :
    Fija el tama�o m�ximo (en bytes) de los mensajes que el usuario desea
    recibir

which [<email>] :
    Devuelve una lista de las listas de correo a las que el usuario est�
    suscrito

info [<lista>] :
    Pide informaci�n sobre las listas existentes o sobre <lista>

who <lista> :
    Devuelve la lista de usuarios suscritos a <lista> 

help :
    Este mensaje

Tenga en cuenta que las instrucciones con <email>, "who" y "mode" s�lo
pueden ser utilizadas por administradores (usuarios identificados en el
esquema de autenticaci�n "mailfrom" o que han utilizado una clave correcta
- global o local). En otro caso, la instrucci�n ser� ignorada. La clave debe
incluirse dentro de cualquiera de las cabeceras del mensaje, con el siguiente
formato:

{password: clave_de_la_lista}

Por ejemplo:

To: Lista de correo {pwd: password1235} <listacorreo\@dominio.com>


Este fragmento, por supuesto, ser� eliminado del mensaje antes de
enviarlo a los suscriptores.
_EOF_

#-------------------------------
$msgtxt{'2ES'} = "ERROR:\n\tUsted";
$msgtxt{'3ES'} = "no est� suscrito a esta lista.\n\n".
                 "SOLUCION:\n\tEnv�e un mensaje a";
$msgtxt{'4ES'} = "con el tema\n\t\"help\" (sin comillas) para informarse de c�mo suscribirse.\n\n".
                 "Este es su mensaje:";
#-------------------------------
$msgtxt{'5ES'} = "ERROR:\n\tUsted";
$msgtxt{'5.1ES'} = "no tiene permiso para escribir en esta lista.\n\nEste es su mensaje:";
#-------------------------------
$msgtxt{'6ES'} = "ERROR:\n\tEl mensaje es m�s grande que el l�mite permitido (";
$msgtxt{'7ES'} = "bytes ).\n\nSOLUCION:\n\tEnv�e un mensaje m�s peque�o o divida su mensaje en\n\totros m�s peque�os.\n\n".
                 "===========================================================================\n".
                 "Estas son las cabeceras de su mensaje:";
#-------------------------------
$msgtxt{'8ES'} = "\nERROR:\n\tNo hay ninguna petici�n de autenticaci�n con ese c�digo: ";
$msgtxt{'9ES'} = "\n\nSOLUCION:\n\tVuelva a enviar su petici�n a Minimalist.\n";

#-------------------------------
$msgtxt{'10ES'} = "\nERROR:\n\tUsted no tiene permiso para conocer la suscripci�n de otros usuarios.\n".
                  "\nSOLUCION:\n\tNinguna.";
#-------------------------------
$msgtxt{'11ES'} = "\nSuscripci�n actual del usuario ";
#-------------------------------
$msgtxt{'12ES'} = "\nERROR:\n\tNo existe tal lista";
$msgtxt{'13ES'} = "aqu�.\n\nSOLUCION:\n\tEnv�e un mensaje a";
$msgtxt{'14ES'} = "indicando en el tema\n\t\"info\" (sin comillas) para recibir informaci�n sobre las listas de correo disponibles.\n";
#-------------------------------
$msgtxt{'15ES'} = "\nERROR:\n\tUsted no puede suscribir a otra gente.\n".
                  "\nSOLUCION:\n\tNinguna.";
#-------------------------------
$msgtxt{'16ES'} = "\nERROR:\n\tLo siento, esta lista est� cerrada para usted.\n".
                  "\nSOLUCION:\n\tSi tiene alguna duda, por favor, env�e sus comentarios a ";
#-------------------------------
$msgtxt{'17ES'} = "\nERROR:\n\tLo siento, esta lista es obligatoria para usted.\n".
                  "\nSOLUCION:\n\tSi tiene alguna duda, por favor, env�e sus comentarios a ";
#-------------------------------
$msgtxt{'18ES'} = "Su petici�n";
$msgtxt{'19ES'} = "debe ser autenticada. Para conseguirlo, env�e otra petici�n a";
$msgtxt{'20ES'} = "(o pulse \"Contestar\" en su lector de correo)\nindicando como tema:";
$msgtxt{'21ES'} = "Esta petici�n de autenticaci�n es v�lida para las siguientes";
$msgtxt{'22ES'} = "horas desde este momento y despu�s\nser� ignorada.\n";
#-------------------------------
$msgtxt{'23ES'} = "\nEsta es la informaci�n disponible sobre";
#-------------------------------
$msgtxt{'24ES'} = "\nEstas son las listas de correo disponibles en";
#-------------------------------
$msgtxt{'25ES'} = "\nUsuarios, suscritos a";
$msgtxt{'25.1ES'} = "\nTotal: ";
#-------------------------------
$msgtxt{'26ES'} = "\nERROR:\n\tUsted no puede recibir una lista de los usuarios suscritos.";
#-------------------------------
$msgtxt{'27.0ES'} = "Error de sintaxis o instrucci�n desconocida.";
$msgtxt{'27ES'} = "\nERROR:\n\t".$msgtxt{'27.0ES'}.".\n\nSOLUCION:\n\n".$msgtxt{'1ES'};
#-------------------------------
$msgtxt{'28ES'} = "Atentamente, Minimalist";
#-------------------------------
$msgtxt{'29ES'} = "usted ya est� suscrito a";
#-------------------------------
$msgtxt{'30ES'} = "ya se ha alcanzado el n�mero m�ximo de suscriptores (";
#-------------------------------
$msgtxt{'31ES'} = "usted se ha suscrito a";
$msgtxt{'32ES'} = "correctamente.\n\nPor favor, tenga en cuenta que:\n";
#-------------------------------
$msgtxt{'33ES'} = "usted no se ha suscrito a";
$msgtxt{'34ES'} = "por el motivo siguiente";
$msgtxt{'35ES'} = "Si tiene alg�n comentario o sugerencia, por favor,\nenv�elas al administrador de la lista";
#-------------------------------
$msgtxt{'36ES'} = "\nEl usuario ";
$msgtxt{'37ES'} = " ha sido eliminado correctamente de la lista.\n";
#-------------------------------
$msgtxt{'38ES'} = "\nError interno durante el proceso de su petici�n; se ha avisado al administrador.".
                  "\nPor favor, tenga en cuenta que el estado de la suscripci�n de ";
$msgtxt{'38.1ES'} = " no ha cambiado en ";
#-------------------------------
$msgtxt{'39ES'} = " no es un miembro registrado de esta lista.\n";
#-------------------------------
$msgtxt{'40ES'} = "\nApreciado";
#-------------------------------
$msgtxt{'41ES'} = "\nOpciones para el usuario ";
$msgtxt{'42ES'} = " en la lista ";
$msgtxt{'43ES'} = " no hay ninguna opci�n espec�fica";
$msgtxt{'43.1ES'} = " se permite el env�o de mensajes";
$msgtxt{'43.2ES'} = " no se permite el env�o de mensajes";
$msgtxt{'43.3ES'} = " subscripci�n suspendida";
$msgtxt{'43.4ES'} = " el tama�o m�ximo de un mensaje es ";
#-------------------------------
$msgtxt{'44ES'} = "\nERROR:\n\tUsted no puede cambiar las opciones de otra gente.\n".
                  "\nSOLUCION:\n\tNinguna.";

