# Fundamentos de Bases de Datos

## Historia de la Persistencia de la Información

Desde la antiguedad se necesitaba el poder almacenar información 
sin que esta fuera dañada o alterada. 

En la historia se inicio usando las tablillas de arcilla, despues el 
papiro y los chinos despues, inventaron el papel.

Fue hasta el siglo 20, se invento el microfilm, el cual nos permite 
almacenar información por un largo largo tiempo, pero se necesitan 
maquinaria muy compleja para su lectura o escritura. 

Fue despues que con el uso de los discos duros, ya sean SSD o HDD, 
nos permitieron almacenar grandes cantidades de información usando 
secuencias binarias. Durante un tiempo se mantuvo solo con esos 
estandares, hasta que llego la masiva cantidad de estos y 
interconectados usando la WEB. La Nube.

La Nube es accecible desde cualquier lugar, si se tiene internet, 
y por muchas personas a el mismo tiempo.

Entonces donde entran las Bases de Datos acá? Son la base o la estructura
de cómo se ha organizado los datos en todo el tiempo, cambiando 
las formas de cómo hacerlo a lo largo de este, pero 
hoy en la actualidad se tiene dos estandares:

- Bases de Datos Relacionales:
	- SQL Server
	- My SQL
	- Oracle DB
	- Maria DB
	- Postgre SQL

- Bases de Datos No-Relacionales
	- Cassandra
	- Main Cache
	- Dinamo DB
	- Elastic Search
	- Big Query
	- Neo 4J
	- MongoDB
	- Firestore

Y entre estos estandares pueden existir dos tipos de bases de datos:

- Bases de Datos Auto Administradas
- Bases de Datos Administradas

La diferencia es quien la administra, tu o tu equipo, o un tercero cómo los mismos que dan el servicio.

## Historia de las Bases de Datos Relacionales

Las computadoras de antaño solo tinian dos componentes pricipales: 
- La Memoria RAM
- Procesador

Obviamente con estos unicos componentes tenían varios problemas, pero 
uno de los más importantes era el no poder almacenar datos de una forma 
que se pueda guardar y extraer sencilla. 

Primero inicio con bases de datos basados en archivos, que consistia en un 
archivo de texto plano con la información almacenada, fácil de guardar, 
pero para extraer de una forma sencilla y organizada era mala.

De ahí nacen las bases de datos relacionales, por el Doctor Edgar Frank Codd en 
1990, donde tambien creo una lista de 12 reglas para la filosofía de las 
bases de datos relacionales. Creando cómo RDBs el algebra relacional, 
que consiste en los tipos de relaciones que pueden tener los datos entre sí.

## Entidades Y Atributos

Las Entidad, son muy parecidos a un objeto. La cual representa a algo en la vida real. 
Estas las vamos a graficar, escribiendo su nombre dentro de un rectangulo, su nombre en 
plural ya que puede representar a todo un grupo de entidades.

Estas entidades tienen atributos. Que son las cosas que componen a las entidades, las vamos 
a graficar usando un circulo, pero si la entidad tiene más de una vez este atributo, las 
vamos a graficar usando dos circulos, uno dentro del otro.

Cuando los atributos tienen otros atributos, estos se grafican de la misma forma, pero se les refiere cómo
atributo compuesto.

Cuando los atributos son derivados de otros, se grafican con un circulo cuyo borde es dashed. O
hecho por pequeñas lineas y no una entera en el borde.

Para diferenciar una Entidad de la otra, podemos hacer uso de un atributo llave o key. El 
cual vamos a graficar en un circulo, pero el texto subrayado. Estas keys nos van a ayudar 
a que las Entidades no sean iguales entre sí, ya que nos puede dar muchos problemas. Estas 
pueden existir en el objeto real, cómo es el número serial de un aparato electronico, 
pero tambien podemos nosotros mismos crear uno artificial por convenencia, ejemplo las 
identificaciones de los humanos. Cedula en Colombia.

### Tipos de Entidades

Hasta ahora hemos visto un tipo de Entidad, la Entidad Fuerte, la cual no 
depende de nada para existir.

Las Entidades Debiles son aquellas que necesitan de otra Entidad para existir. 
Son graficadas cómo un rectangulo con doble borde. Ejemplo de esta sería un 
platillo en un restaurante, se tendría una Entidad en el menu, pero se crearia 
otra nueva entidad, la cual sería el platillo que vas a comer, al momento de 
crearla, cocinar o pedir la comida. Haciendo que tu platillo, la Entidad Debil, 
no hubiera podido existir si no existiera el Platillo en el Menu, la Entidad Fuerte.

Pero algunas veces estas Entidades Debiles van a repetirse una con la otra, para 
eso vamos a usar el mismo sistema que con las entidades fuertes, vamos a usar un 
sistemas de identificadores o keys. 

Estos pueden ser:

- Identidad:
	Usan el mismo ID que la Entidad Fuerte, pero esto puede hacer que se repitan 
	cuando existan muchas Entidades Debiles, creo, espero que no.

- Existencia:
	Usan un Id propio o diferente a la Entidad Fuerte. Evitando que se repitan.

## PlatziBlog I:

Nuestro proyecto en el curso va a ser un Blog, en el cual vamos a ir por las bases 
hasta llegar a una base de datos totalmente usable. En este primer paso vamos a 
mirar las Entidades del Blog. 

En esta ocación hemos hecho las entidades de Usuario y Post.

## Relaciones

Las relaciones son los tipos de interaccines que tienen las Entidades, siendo tipo: tiene, 
contiene, pertenecen, entre otros. Estas relaciones se grafican en forma de rombo. Escribiendo 
el tipo de relacion dentro de este.

Estas relaciones van a variar el número de Entidades, dandole paso a la Cardinalidad. Es decir
cuantos de un lado se necesitan para el otro y cuantos del otro se necesitan para el lado. Estas 
son algunas de las cardinalidades:

- 1 : 1
	Cuando una entidad tiene una relación de 1 a 1. Graficada con una linea con una linea 
	paralela llegando casí a el final de la linea. Se puede tener dos lineas paralelas si 
	se especifica que ese tipo de relación es estricto.

- 1 : 0 o 0 : 1
	Cuando una entidad tiene una relación de 0 a 1, es decir una puede existir sin la 
	otra necesariamente. Se grafica casi de la misma forma de la relación 1:1, pero la 
	linea principal, la que tiene las dos o cuatro lineas paralelas, pasa de ser 
	solida a ser dashed o si fuera rayitas.

- 1 : n
	Cuando una entidad tiene una relación de 1 a n o muchos, simplemente la relación 
	es entre 1 y varias Entidades. Se grafica cómo una linea recta, con una linea paralela 
	en un extremo, y 3 lineas que parecen ramas del otro extremo.

	Estas pueden ser diferentes, cómo añadir un circulo antes de la rama o añadir una linea 
	paralela a ambos extremos para indicar que es una relación estricta.

- 0 : n
	Cuando una entidad tiene una relación de 0 a n o muchos, la combinación de la anterior con 
	la de 1:0. Se grafica usando la linea dashed o rayitas en la linea principal o 
	poniendo el circulito del extremo sin ramas y poniendo la linea paralela en el lado de 
	las ramas.

- n : n
	Cuando una entidad tiene una relación de n a n, la combinación es común en los graficados de 
	las bases de datos. Se grafica usando una linea con ramas en cada extremo, para definir que 
	cada Entidad debe ser 2 o más, se ponen lineas paraleas antes de las ramas en cada extremo.

## El Diagrama ER

Es la acción de conectar las relaciones entre las Entidades de nuestra DataBase, el diseño de este puede cambiar 
mucho dependiendo del tipo de ER se este usando, nosotros describimos y vamos a usar el ER tipo Chen.

## Tipos de Datos en las DB

Los tipos de datos en las DB son muy imporatnes ya que son lo que vamos a guardar en esencia. No llegan a variar tanto de los 
tipos de datos en la programación.

- Tipo de Texto:
	- Char(n):
		Es un dato de texto. Coge una porción de la memoria y la define para su uso, sin importar que 
		se use o no, pero no se puede modificar el espacio usado. Esto lo hace para 
		optimizar la memoria. 
	- VarChar(n):
		Es un dato de texto. Puede almacenar de una forma más flexible el texto, poniendo un limite de caracteres de maximo 255 chars.
		Puede incrementar o achicar su espacio en la memoria dependiendo del texto almacenado.
	- Text:
		Es un dato de texto. Se usa principalmente para textos con más de 255 chars.

- Numeros:
	- Integer:
		Es un dato númerico entero, sin decimal o fracción, no es optimizado, pero para eso existen subtipos de 
		este dato.
	- BigInt:
		Es un dato númerico grande, mayor a 99.
	- SmallInt:
		Es un dato númerico pequeño, menor a 99.
	- Decimal(n, d):
		Es un dato númerico decimal. Pide la parte entera y su decimal.
	- Numeric(n, d):
		Es un dato númerico decimal, pero este es más estricto con su decimal. Pide la parte entera y su decimal.

- Fechas:
	- Date:
		Fecha del día sola, día, mes y año.
	- Time:
		Hora del día, 24 horas
	- DateTime:
		Combinanción de las dos
	- TimeStamp:
		Combinanción de todas las anteriores, pero agrega datos cómo la zona horaria de la hora y fecha.

- Logicos
	- Bool:
		Dato booleano, false o true.
- Constains
	Son restricciones que se le pueden aplicar a los datos para evitar, principalmente, errores de lógica con el 
	programa. 

	- NOT NULL:
		Se asegura que al ingresar datos, el dato no sea nulo o que no tenga datos. Importante para
		restringir forms
	- UNIQUE:
		Se asegura que el dato no se pueda repetir dentro de esa columna. 
	- PRIMARY KEY:
		Es el equivalente del id, nos va a permitir acceder a la Entidad para que esta interactue con otras Entidades. 
		Ademas se asegura de tener la funcion de NOT NULL y UNIQUE
	- FOREIGN KEY:
		Es una Key que nos va a permitir acceder a una Entidad, teniendo las mismas caracteristicas que PRIMARY KEY, excepto 
		UNIQUE ya que se puede usar varias veces el llamar la Entidad.
	- CHECK:
		Nos permite verificar un valor usando una condicional
	- DEFAULT:
		Coloca un valor por defecto cuando no se pasa un valor, así para evitar tener un NULL o nulo.
	- INDEX:
		Nos permite hacer busquedas de una forma más rapida. Pero se vuelve un poco lento meter más Entidades, ya que debemos actualizar 
		los index de cada Entidad al ingregar una nueva Entidad.
	
## Normalización 

La normalización es la forma en que el computador pueda entender de una mejor forma los datos de la base de datos.
Esto haciendo uso de las reglas que Codd creo, asi mismo haciendo que la base de datos sea relacional.
Cada regla va a necesitar la anterior para ser complida.
Estas reglas son:

1. 1FN No se pueden tener columnas o campos repetidos.
2. 2FN Cada campo de la tabla debe depender de una clase unica.
3. 3FN Los campos NO son claves NO deben tener dependencias
4. 4FN Los Atributos multi valuados, o con varios atributos se identifican por
una clase unica

Algunos dicen que puede existir una 5ta regla de Forma Normal, la cual consiste en 
usar joins para volver la información a su estado original. Sin embargo esto es 
unicamente hecho para revisión humana.

## PlatziBlog II:

Hemos cambiado el diagrama físico para que los atributos estuvieran en listas y estos tuvieran su tipo de dato. 
Se ha hecho mayor incapie en las relaciones entre cada Entidad.

Este proceso se ha hecho en el proyecto de Restaurante también.

## RDBMS y RDB

Son las siglas de Relational Data Base y Relational Data Base Management System. Solo eso, ya.
Las explicadas RDBMS son casí todas de Oracle, empezando por su propia DB Oracle, MySQL y PostgreSQL.

## Instalación de una RDBMS

Para practicar vamos a usar una RDBMS en nuestro sistema local, esto ya que es lo más practico para practicar y aprender. 
Pero en la industria y trabajos de IT. No se va a usar un sistema local, talvez un servidor o inclusive la nube, por ende 
es importante aprender a usar ambos ambientes.

El RDBMS que vamos a usar es MySQL, el cual es gratituo y abierto. Ademas de ser usado muchisimo en todo el mundo.

### Windows
Para instalar MySQL vamos a simplemente ir a su página web. Vamos a descargar el instalador, existen dos tipos de estos:

- Web:
	Pesa menos, pero tiene que descargar los recursos y otros desde el navegador o la web
- Community:
	Pesa más, pero descarga todos los recursos.

Despues de ejecutar el intalador se nos abrira un menu para instalarlo. 
Sera la licencia, basada en código abierto.

Podemos instalarlo completo o a diferentes paquetes que el instalador nos otroga, 
pero en el curso vamos a hacer una instalación custom. Para 
así evitar descargar varias cosas inecesarias por ahora.

Vamos a instalar:

- MySQL Server 5.6 x64 o x84
	el x64 o x84 depende de tu sistema operativo
- MySQL Workbench 8.0 
	Una GUI que vamos a usar para tener una mejor visualización del código

Despues de descargar los elementos, nos va a pedir si vamos a usar MySQL cómo sevidor, programador o usuario.
Y ponerle una contraseña a un usuario, generalmente root. Si alguien llega a obtener la 
contraseña de root, puede modificar, añadir o borrar datos en la db.

### Mac

Para descargar en Mac, vamos a tener que descargar el Server y el Workbench por individual, buscando los instaladores en 
su página web. Tambien se debe configurar el usuario root, ya que MySQL server en Mac nos da una contraseña por defecto.

### Linux

Para descargar en Linux, sorpresivamente podemos descargar el instalador desde la web de MySQL, pero algunas veces podemos 
descargarlo cómo si fuera un paquete más.

sudo apt install mysql-server
sudo apt install mysql-workbench

Despues se usa/configura usando mysql en la terminal.

## MySQL Workbench

MySQL Workbench es una GUI de bases de datos de MySQL, hay varias, pero esta es la base de MySQL.

Para usarla vamos a crear una conección nueva dandole a el signo de +. En el apartado de MySQL Connections.
Donde vamos a configurar y a darle un nombre, por ahora solo eso.

Pero por ahora solo vamos a abrir el Local Conection que esta por defecto.

Para hacer una Base de Datos, vamos a ir a el menu de la izquierda de Schemas, click derecho y en create new Schema.

Y ahí vamos a hacer varios ejercicios del curso.

## Servicios Administrados

Los servicios administrados, cómo explicados anteriormente, son servicos de mantenimiento de servidores para nuestra base de datos. 
En los cuales nosotros no debemos preocuparnos por los problemas físicos del servidor, esto tambien se puede conocer cómo nube web.

Vamos a usar el Servicio Administrado de Google Cloud, bueno el profe, yo no.

Vamos a crear el proyecto dandole un Id o un nombre, vamos a ir a el menu de la 
izquierda, vamos a buscar en el apartado de storage SQL. Si no tenemos hecho 
ninguna instancia, vamos a crear una de MySQL. 

Le ponemos un Id o nombre a la base de datos, un password para el usuario root.
Despues de crearlo vamos a poder ver el servidor en el que esta nuestra base de datos.
Y vamos a esperar a que se termine de crear en los data centers de google.

Una vez creados, podemos ir a el apartado de databases para crear una database, quien lo diria.
Y el apartado de conecciones podemos usar nuestro navegador para usar una herramienta llamada cloud shell, 
lo que nos permitira usar el servidor de MySQL usando una terminal en la cloud.
Esta necesita un poco de tiempo para verificar que si vamos a hacer cosas buenas y ademas de 
verificaciones como las contraseñas y otros.

más tarde se va a hacer un ejercico acá.

## Historia de SQL

El SQL o Structured Query Lenguage. Es el lenguaje standar a predilección de 
la gran mayoria de bases de datos en el mundo de tech. SQL surge de la 
necesitad de tener un metodo para obtener datos y que este metodo sea 
standarizado para poder comunicar bases de datos con otras bases de datos sin 
tener que hacer programas y softwares raros. 

Para entonces se ha venido utilizando en casí todos los tipos de bases de 
datos, pero hay algunos que usan NOSQL, no es que no usen SQL, estos significan
Not Only S Q L, tales cómo la DB de Cassandra. Big Data en google y otros.

Estos no son totalmente nuevos o diferentes a SQL, es más la gran mayoria toma
cómo base a SQL. 

## DDL 

SQL cómo es un standar puede dividirse en partes, una de estas es DDL o 

Data 
Definition
Language

En el cual nos ayuda a crear la base, cimientos de la bases de datos.
El DDL tiene comandos cómo:

- Create:
	Crear diferentes elementos cómo tablas, vistas, indices, entre otras
- Alter:
	Alterar los elementos anteriores cómo tablas.
- Drop:
	Suelta o Borra elementos anteriores. Toca tener mucho cuidado ya que se puede borrar todos los datos.
	Puede salirte muy caro el hacer un mal drop, y lo malo es que depronto no sea dinero la deuda.

Con estos comandos vamos a poder manejar diferentes elementos o grupos, 
una lista más clara de estos son:

- Database:
	Las DB o Schemas son el repositorio de datos de nuestro proyecto.
- Tables: 
	La proyección de los datos que hemos visto de forma teorica a un lenguaje SQL
- Views:
	La misma proyección de los datos de la DB, pero ya de una forma entendible para 
	un ser humano.
 
Para hacer una DB vamos a usar:
	
	CREATE DATABASE o SCHEMA nombre_db;
	Dependiendo si necesita usar DATABASE o SCHEMA

	USE DATABASE nombre_db;
	Importante para usar SQL en la consola.

Para crear una tabla vamos a usar:

	CREATE TABLE nombre_tabla (
		columna TYPE_DATA DATA_CONSTRAINS,
		...
	);

Tecnicamente cómo lo estabamos haciendo en el 
esquema físico de la db.

Sin embargo el GUI de MySQL o el mismo MySQL nos 
da unos nuevos Contrains para los datos, siendo los que 
puedo ver:

- Auto Increment:
	Incrementa automaticamente con cada row
- Unasigned:
	Tipo de dato Unasigned
- Binary:
	Tipo de dato Binario
- Zero Fill:
	llenar de 0 los valores de la columna
- Generated
	No dice nada. :P.

Esto tiene una aparecia visual más intiuitiva al usar la GUI, pero personalmente
no me gusta.
Para evitar re crear la misma Database, table o view podemos hacer uso de los commandos (?
depues de CREATE y el tipo de elemento

	IF NOT EXISTS 

O si queremos solo modificarlo vamos a usar

	CREATE ... OR REPLACE ...

Asi evitaremos problemas y errores hechos por horrores

Para crear views vamos a hacer: 

	CREATE VIEW nombre_view AS 
		SELECT ...
		FROM ... 
		WHERE ...

Solo ponemos el nombre y unos comandos de SQL que aun no hemos visto, pero
estos son para obtener una información de la base de datos.

El Comando ALTER nos permite hacer diferentes modificaciones, generalmente, a tablas.
Este tiene unos subcomandos parecidos a los DDL que son:

- ADD:
	Añade la modificación
- CHANGE:
	Cambia el elemento dados por la modificación
	Debemos escribir el nombre de la columna y despues el nuevo o mismo nombre. Y las modificaciones.
- DROP:
	Borra los elementos dados por la modificación
	
Para usar DROP fuera del ALTER, vamos a simplemente usado cómo si fuera CREATE, pero 
para totalmente lo contrario

	DROP ELEMENT nombre_elemento; // Muerte subita

Si estamos en una GUI nos va a primero advertir que no deberiamos intentar eso, o almenos sin mirar que estamos
haciendo. Pero si llegamos hacerlo desde un script o la terminal, nos va ejecutar el comando sin nada, sin 
permiso ni perdon.

## DML 

DML o Data Manipulation Language, es el sublenguaje de SQL que nos permitira 
manipular la información, cómo lo dice su nombre.

Teniendo cómo DDL unos comandos principales, cuales son:
- Insert
	Agrega un nuevo dato o tupla a nuestra db o tabla
- Update
	Actualiza o cambia los datos de nuestra db o tabla	
- Delete
	Elimina o borra los datos de nuestra db o tabla
- Select
	Es un comando que nos va a permitir seleccionar datos 
	de nuestra db, generalmente para mostrarla o usarla 
	cómo output.


Para usar Insert vamos a usar:
	INSERT INTO name_tabla (columna_1, columna_n ...)
	VALUES 
		("valor_columna_1", "valor_columna_n", ...),
		(...);

Se pueden agregar varios valores si usamos comas entre cada tupla con los datos.
Es imporatante tener orden al Insertar los datos. Ya que si no ingresamos un 
valor de una columna este ser va a volver NULL o el DEFAULT que hayamos puesto.

Para usar UPDATE vamos a usar:
	UPDATE nombre_tabla
	SET columna_1 = "valor_1", columna_n = "valor_n"
	WHERE condicional;

La condicional es extremadamente importante para así evitar cambiar todos los datos de 
la db. Y aun así, debemos tener cuidado, ya que podemos hacer una condicional que 
pueda afectar a toda o a una gran parte de la DB. 
Lo bueno es que algunas GUIs nos van a avisar antes de eso, y otras directamente 
no van a funcionar o van a correr el script.

Para evitar eso lo mejor es intentar hacer condicionales donde se usen IDs o PK.

Para uasr DELETE vamos a usar:
	DELETE FROM nombre_tabla
	WHERE condicional;

Va a ser lo mismo que UPDATE, pero con mayor mayor riesgo, ya que esto es Eliminar 
totalmente los datos. 

Para usar SELECT vamos a usar:
	SELECT columna_1, columna_n 
	FROM nombre_tabla
	WHERE condicional

Simplemente nos va a mostrar o hacer un output de los valores de las columnas dentro de la 
tabla pedida, el WHERE es opcional pero algunas veces necesario y util para obtener información
más precisa.

## Que tan Standar es SQL?

Como SQL surigio cómo el Standar para hacer queries a las DBs, esto ha seguido 
siendo así hasta el día moderno, esto nos permite poder utilizar diferentes tipos 
de DBs y usar el mismo código SQL o cómo minimo agregar unas minimas variaciones.

Por ejemplo de MySQL a PostgreSQL, de lo que llevamos, es igual el código.

## Pasar los Diagramas Físicos a MySQL

Simplemente vamos a usar las herramientas ya aprendidas del GUI o los comandos 
que ya hemos ejecutado, 

Pero para ir haciendo las tablas, debemos
empezar por las tablas sin dependencias o las que no necesitan Foreign Keys. Ya 
despues de tener las dependencias de esas tablas, podemos ir formandolas usando 
un menu de abajo en la sección de columns, Indexes, Foreign Keys ...

Para hacer las tablas de interconección, cómo la tabla de posts-tags en 
Platzi Blog, solo los vamos a hacer cómo si fueran un tabla llena de foreign keys

Un truco que se puede hacer en el workbench es ir a el menu de arriba de Database, 
escoger la opción de Reverse Engineer, conectar la db, seleccionar el schema y darle a aceptar 
para hacer un diagrama físico de la db.

Esto nos puede ayudar a entender una db a la que no tengamos un diagrama físico pre hecho o 
que ya haya iniciado su uso.

## PlatziBlog III

Listo, ahora que tenemos las bases de SQL para usarla en MySQL, vamos a hacer uso de su workbench para 
hacer la DB de PlatziBlog, hecho en los ejericicios, y la DB del Restaurante. 

## Querys

Los Querys son una herramienta muy fundamental para poder usar una DB. Estas escencialmente nos
van a dar diferentes tipos de datos mediante consultas a la base de datos. 

Una buena consulta nos puede dar información vital para el uso comercial, empresarial o inclusive
tecnologica, cómo el machinelearning, técnicas de marketing u otros.

### Estructura

Son la forma en las que estructuramos las preguntas a las DBs. La estructura de esta pregunta puede 
ser sencilla o muy compleja, vamos a ver por escalas.

El minimo de un Query es:

	SELECT ... FROM ...

Donde SELECT es donde nosotros elegimos que datos vamos a tomar, estos separados por comas. 
FROM es de donde sacaremos los datos, generalmente una tabla. 

Y en la gran mayoria de casos vamos a hacer uso de WHERE, que es un comando que nos 
permite hacer uso de condicionales para restringir los datos que obtengamos.

Donde se pueden usar operadores relacionales.

	SELECT ... FROM ...
	WHERE num > otro-num

Siendo este query la forma más sencilla de obtención de datos utiles.

### SELECT 

Con el comando SELECT se puede elegir los datos que necesitamos, puediendo elegir todos 
los datos y columnas disponibles usando:

	SELECT * FROM tabla

Donde vamos a usar FROM para obtener todos los datos de una tabla, y que se muestren cómo tal.

Para elegir data selectivamente por cada columna, solo vamos a poner el nombre de la columna despues del
SELECT:

	SELECT columna_1, columna_n FROM tabla

Pero algunas veces las columnas tienen nombres muy especificos o que se puedan refundir entre si, para eso
podemos usar el comando AS para mostrar los datos en la tabla de una forma especifica. 
Usandolo así:

	SELECT columna_1 AS nuevo_nombre FROM tabla.

Entonces en el query, se van a mostrar los datos con el titulo de nuevo-nombre

Pero el SELECT tambien tiene unas functions que nos van a ayudar, por ejemplo:
COUNT es una function que nos va a permitir contar los registros dentro del 
Query.

### FROM

El Comando FROM, es el comando complementario de SELECT, ya que sin ambos, los Querys no funcionan. 
Este Comando nos permite definir de donde vamos a traer los datos. Vamos a usarlo de la siguiente 
forma sencilla:

SELECT ... FROM tabla

Donde tabla es el lugar o la tabla donde sale la información para usar o mostrar el Query.

Un comando extremada mente util y complementario de FROM es JOIN, el que nos va  apermitir hacer 
conjuntos con nuestras tablas y poder hacer Querys usando mucha más información.

Estos conjuntos vienen en diferentes tipos, dependiendo del tipo de unión. Siendo estos: 

Para explicar de una forma mejor los grupos, vamos a tener dos:
1. grupo A de usuarios
2. grupo B de posts

Cómo lo definimos en nuestra DB, los usuarios pueden hacer posts y los posts tienen cómo dueños
a un usuario. Siendo esto por user-id, haciendolo tener un factor en común.

- Joins de Diferencia
	- Left Join Normal:
		Trae todos los datos de la tabla A o la de la izquierda
	- Left Join Excluyente(?:
		Trae los datos de la Tabla A que no estan en la Tabla B o derecha
	- Right Join N:
		Lo mismo, pero se cambia de lado
	- Right Join E:
		Lo mismo, pero se cambia de lado

- Join de Inner y Outer
	- Inner Join:
		Traer todos los datos en comun entre ambas tablas
	- Outer Join de uninión:
		Trae todos los datos de ambas tablas. Cómo el outer join no es 
		standar de MySQL, vamos a tener que hacer un poco de mariobas para 
		hacerlo. 
	- Outer Join de Diferencia Asimetrica:
		Trae los datos que no tienen nada en común entre ambas tablas, vamos a 
		tener que hacer un poco de mariobas para hacerlo.

	Para algunas de la mariobas, vamos a tener que hacer 2 o más selects. Para que nos 
	queden en un solo query podemos hacer uso del Comando UNION.

### WHERE 

El Comando WHERE es un comando que nos va a permitir filtrar los 
datos de un Query. Permitiendonos obtener datos más precisos y acomodados 
a lo que necestamos. Para poder filtrar los datos se pueden usar diferentes
operadores lógicos, cómo:
- mayor, menor o igual que:
	>, <, <=, >=. Son operadoes que nos 
	van a permitir comparar datos númericos y fechas dependiendo de 
	un valor, devolviendo solo los que sean verdaderos 
	a el operador. 10 > 5 => True. 10 > 12 => False.
	2020 > 1996 => True. 2020 < 2022 => True.

- igual no desigual que:
	=, !=. Son operadores que nos 
	permiten mirar si un dato es igual a un valor, 
	muy util al momento de hacer filtros de datos 
	con texto. Pero su contraparte nos permite mirar 
	que datos no son iguales, o desiguales, a un valor, 
	saltandose este si llega a dar True. 
	"perro" = "perro" => True. "perro" != "gato" => True.

- LIKE:
	LIKE. Es un operador que nos va a permitir hacer un tipo de busqueda 
	dentro de un string, haciendo uso de palabras clave. Ejemplo, 
	necesitamos un dato que sea "hola", para eso hacemos lo más sencillo
	LIKE "hola", casi cómo si fuera un igual.
	Pero para buscar algo que inicie con "hola", vamos a hacer: LIKE "hola%".
	Que termine en hola "%hola", que contenga hola "%hola%". Y así.

	No importa si esta en mayusculas o si tenga acentos el dato.

- BETWEEN ... AND:
	BETWEEN ... AND. Es un operador que nos permite elegir un rango, de valores 
	que puede tener un dato, sea númerico o de fechas. BETWEEN 2010 AND 2015 => valores 
	entre 2010 y 2015, y ellos mismos.

Para mejorar la sintaxis de busqueda con WHERE podemos convertir o obtener solo partes 
de los datos usando diferentes funciones, generalmente usado con fechas:

- HOUR(dato)
- DAY(dato)
- MONTH(dato)
- YEAR(dato)

Y así con cada valor de cada dato que necesitemos especificamente, es util cuando no 
necesitamos toda la fecha, si no solo el mes o el año.

- IS NULL:
	Verifica si el valor es NULL o nulo, o vacio. No se puede usar el 
	operador de igual, dado a que no es un tipo de dato, entonces no se 
	puede hacer nada con él directamente. Es como si miraramos que una 
	canasta de huevos tenga más huevos que nada, no se puede porque es nada.

- AND:
	Es un operador lógico el cual nos permite concatenar más operadores, 
	es decir diferentes tipos de filtrados en un solo WHERE.

### GROUP BY

Es un comando que nos permite agrupar datos de una forma funcional dentro de la DB, 
usando diferentes funciones para poder contar, sumar, restar, entre otros, los datos.

Para explicarlo bien se deben hacer ejercicios puntuales:


La funcion COUNT, nos permite contar el número de registros de los datos de select,
ejemplo:

	SELECT *, COUNT(*) FROM tabla

Nos va a contar todos los registros disponibles en la tabla, pero 
si cambiamos el primer * por una columna y agregamos...

	SELECT estatus, COUNT(*) FROM tabla
	GROUP BY estatus

Nos va a identificar los valores que puede tener estatus, en nuestro caso activo 
y inactivo. Y va a contar cuantos registros hay en cada grupo.

	estatus  | count(*)
	activo   | 17
	inactivo | 5

Esto se puede hacer con varias funciones cómo
- min
- max
- sum
- avg
- entre otras.


