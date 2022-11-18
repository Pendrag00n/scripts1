A continuación encontrarás una batería de ejercicios de scripting de diferente dificultad. Esta práctica se trabajará durante dos semanas. Para  aprobar deberás subir un mínimo de 8 de los ejercicios propuestos realizado correctamente.  La realización de 10 ejercicios o más correctos supondrá una calificación del 10. Recuerda que la realización de los mismos tiene por objeto  " aprender haciendo" y mientras más lo trabajes mejor será la adquisición de las destrezas. Es un trabajo individual y para un mismo planteamiento podría existir más de una forma de resolverlo.

    Crea un script que muestre los grupos secundarios de un usuario. Recibirá un parámetro con el nombre del usuario. Validará la existencia en la base de datos del usuario y encaso que exista, listará la relación de grupos secundarios del usuario. No utilizar id o similar.
    Crea un script que realice una copia de seguridad.

    Se pasará como parámetro la carpeta o carpetas de las que se hará backup (el script comprobara si existen dichas carpetas), la carpeta donde se guardara la copia será una carpeta existente en el sistema o en todo caso la creará la primera vez que se ejecute el script (por lo tanto, deberá hacer una comprobación de su existencia para crearla ). El nombre de la copia de seguridad contendrá la palabra 'backup' seguida de la fecha en formato 'ddmmyyyyhhmmss'

    También creará un log (fichero de texto) donde guardará por cada copia de seguridad que se haga, una línea con nombre asignado a la copia, seguido del nombre de carpetas que se han copiado (esto es el contenido de las variables que se han pasado como variables, S1, $2,…,etc.) y otro log donde se guardarán los posibles errores que pudieran salir al realizar el backup.

Nota: Como es posible que el script lo ejecute un usuario sin privilegios de administrador, es recomendable que la carpeta donde se guarden las copias, sea ubicado en el directorio home del usuario que ejecute el script.

    Crea un script actualice la variable PATH. Recibirá un único paramétro, “a” o “d”, según se pretenda anexar o eliminar una ruta. Se deberá validar el directorio en cuestión, pudiéndose recibir uno de los siguientes mensajes: “El directorio que pretende incluir no existe" o “La variable PATH no incluye ese directorio,”.

    Crea un script que permita dar de alta usuarios. Todo el proceso para el alta del nuevo usuario será realizado por el scritpt, generación uid, clave cifrada, grupo principal, grupos suplementarios, etc. NO se pueden utilizar herramientas tipo useradd, usermod, grouopadd, etc.

    Crea un script que muestre los minutos que lleva un determinado usuario conectado al sistema.

    Crea un script que indique para cada usuario la fecha y hora de la última desconexión.

    Crea un script que obtenga los usuarios que tienen como grupo principal uno dado como parámetro.

    Haga un shell script llamado cuenta_tipos, que devuelva el número de ficheros de cada tipo que hay en un directorio, y los nombres de los mismos. Tendrá un único argumento (opcional) que será el directorio a explorar. Si se omite el directorio se considerará que se trata del directorio actual. Devolverá 0 (éxito) si se ha llamado de forma correcta y 1 (error) en caso contrario. La salida será de esta forma:

La clasificación de ficheros del directorio XXXX es:

Hay t ficheros de texto: X1, X2, ... Xt

Hay dv ficheros de dispositivo: X1, X2, ... de

Hay d directorios: X1, X2, ... Xd

Hay e ficheros ejecutables: X1, X2, ... Xe

    Cree un shell script llamado fecha_hora que devuelva la hora y la fecha con el siguiente formato:

Son las hh horas, xx minutos del día dd de mm de aaaa.

    Cree un shell script llamado infosis que muestre la siguiente información:

- Un saludo de bienvenida del tipo:

Hola usuario uuu, está usted conectado en el terminal tty

donde ”uuu” y ”tty” son respectivamente, el nombre de usuario y la terminal desde el que se ejecuta la orden.

- La fecha y la hora actuales

- Una lista con los usuarios conectados.

- Una lista de los procesos del usuario con el que se ha logueado.

    Cree un guión shell llamado infouser que reciba un parámetro, el login de un usuario y que muestre la siguiente información:

- Login.

- Nombre completo del usuario.

- Directorio home.

- Shell que utiliza.

- Una línea que indique si el usuario está actualmente conectado o no.

- Procesos pertenecientes a dicho usuario. La información a mostrar para cada proceso debe ser el PID y la orden completa que dio lugar a la creación de dicho proceso.

El guión debe comprobar:

- Si las opciones y parámetros son correctos.

-Si el usuario que se pasa como parámetro existe o no.

Además, debe permitir las siguientes opciones:

-p: sólo muestra información de procesos.

-u: sólo muestra la información del usuario y no la de procesos.

--help muestra información de ayuda (lo que hace el guión, su sintaxis y significado de opciones y parámetros).

Los códigos de retomo deben ser:

- 0: éxito.

- 1: no se ha respetado la sintaxis de la orden.

- 2: usuario no existe.

    Realiza un script que muestre la relación de usuarios válidos en /etc/passwd.

Se considera usuarios válidos aquellos que tienen:

    Datos en todos los campos de /etc/passwd

    Un directorio home válido y con permisos apropiados para el usuario

    El intérprete de comandos sea /bin/bash o /bin/csh

El script debe mostrar:

Login Nombre_copleto Carpeta home

    Cree un shell script llamado busCadena, al que se le pase como parámetro una cadena y una lista de 0 a n nombres de fichero. El shell script debe devolvernos los nombres de los archivos que contienen en su interior la cadena especificada. Para evitar errores, sólo se hará la búsqueda en los archivos que sean regulares y sobre los que tengamos permiso de lectura. Por ejemplo:

busCadena “cadena” fichero01 ficher02 fichero03

devolvería:

La cadena "cadena" se ha encontrado en los siguientes ficheros:

fichero02

fichero03

Modificar busCadena para que haga la búsqueda en todos los ficheros a partir de un directorio dado incluyendo subdirectorios.

14.  Construir un guión shell en Linux con la siguiente sintaxis

diffd [-i] directorio1 [directorio2]

data: Función: debe mirar todos los nombres de fichero contenidos en el directorio1 y en el directorio2 (a excepción de los nombres de directorios) y mostrar las diferencias, es decir, mostrar el nombre de aquellos ficheros que aparecen en uno de los directorios pero no en el otro, indicando para cada uno de ellos el directorio en el que se encuentra.

data: Parámetros: directorio1 y directorio2: directorios entre los que se hace la comparación. Si se omite directorio2 (que es opcional) se entenderá que queremos comparar directorio1 con el directorio en el que nos encontremos al ejecutar diffd, en caso de ser el mismo que directorio1, se debe mostrar un error.

data: Opciones: -i: invierte el funcionamiento de diffd haciendo que muestre los nombres de aquellos ficheros que se encuentran en los dos directorios (es obvio que en este caso no hay que indicar el directorio en el que aparece el fichero).
15. data:Hacer un guión shell llamado mirm que mueva al directorio ~/.borrados los ficheros (nunca directorios) que se le indiquen como parámetros. Este guión shell viene acompañado por otro guión llamado limpiezad, que se debe ejecutar en segundo plano cada 1 hora, debe comprobar si es necesario borrar ficheros del directorio ~/.borrados en función del espacio ocupado en disco. Ambos guiones shell hacen uso de la variable de entorno MINLIBRE que indica el mínimo espacio en disco que debe quedar. De tal manera que el espacio libre en disco (en bloques de 1K) debe ser igual o superior a MINLIBRE. En el caso contrario habrá que borrar ficheros ~/.borrados hasta alcanzar MINLIBRE (para borrar se seguirá una política FIFO).

Notas:

    basta con que ambos guiones funcionen para la partición en la que se encuentra el directorio personal del usuario.

b) ambos guiones deben hacer uso del fichero ~/.listaborrados que guardará para cada fichero presente en ~/.borrados su ruta de acceso original.

c) Mejora: debe permitir el borrado de ficheros con igual nombre.

16. Como complemento del ejercicio anterior, hacer un guión shell llamado recuperar, que permitirá recuperar ficheros aún estén ubicados en ~/.borrados . Si se le pasa un único parámetro, se entenderá que se trata de un patrón y entonces mostrará todos los ficheros de ~/.borrados que cumplan dicho patrón. Si se le pasan dos parámetros, el primero se entenderá como antes, pero el segundo debe ser el nombre de un directorio, en este caso, se recuperarán todos los ficheros borrados que cumplan el patrón y se dejarán en el directorio indicado como segundo parámetro.

Además, este guión debe implementar también la opción “-o <patrón>” que recuperará todos los ficheros que cumplan <patrón> y los copiará a su posición original, según lo indicado por el fichero ~/.listaborrados. Si el directorio original ya no existe, debe crearse siempre que se tenga permiso.

Mejora: debe permitirse la recuperación de ficheros con igual nombre.

17. Escribir un script que al pasarle por argumento un archivo o directorio, devuelva el tamaño en MB. No se puede utilizar du.

18. Crear un script que visualice el espacio en disco (MB,GB) que ocupa cada uno de los usuarios pasados como parámetros (recordar que los usuarios pueden almacenar archivos fuera de ~).

19. Crea un script que muestre y realice las siguientes opciones del menú:

Gestión de usuarios (llamar función usuarios)

Gestión de grupos (llamar función grupos)

Salir

función usuarios debe mostrar y ejecutar las siguientes opciones:

Gestión de usuarios

    Crear usuario

    Eliminar usuario

    Cambiar contraseña

    Volver al menú anterior

función grupos debe mostrar y ejecutar las siguientes opciones:

Gestión de grupos

    Crear grupo

    Eliminar grupo

    Añadir usuario a grupo

    Volver al menú anterior

20. Crear script llamado quita_blancos.sh. Este script debe renombrar todos los ficheros del directorio actual que incluyan espacios en blanco en su nombre y sustituirlos subrayados bajos (_). Así, si en el directorio indicado como parámetro hay un fichero como Mi carta al ejecutar el script cambiará su nombre por Mi_carta. Esto debe hacerse automáticamente para todos los ficheros del directorio actual que tengan espacios en blanco en el nombre.