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

