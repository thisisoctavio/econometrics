  
***¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ACLARACIONES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!***
***Fuente: http://www.indec.gob.ar/ftp/cuadros/menusuperior/eph/EPH_registro_2_trim_2016.pdf***
***Se asigaron las etiquetas de las variables y categorias que/como figuran en el pdf. Valores 9/99 no aclarados se definieron como "Ns./Nr."***
***La longitud de las etiquetas es excesiva en algunos casos. Queda a criterio del usuario acotarlas o no***
*** 1. Para cambiar etiqueta de variable simplemente cambiar el nombre que figura entre "" y ejecutar la linea.***
****2. Para cambiar etiqueta de categorias: Eliminar etiqueta con "lab drop [nombre de etiqueta]"--> Modificar etiqueta--> Ejecutar lineas desde lab def hasta el final de lab val***
***En la sintaxis se ejecuta la conversion de las variables "mas_500" y "ch14" de string a numerico previo a asignar etiquetas a las categorias***
***Las etiquetas del CAES y el CNO? Te mando un abrazo. (Quizás en otro momento)***
***Se quitaron los acentos para evitar aparicion de simbolos en caso de que se procese con otro programa (ej SPSS)***
***Por las dudas, revisar y avisar los errores encontrados!***


*** destring variables ***

destring pp03c pp03d pp3f_tot pp03g pp03h pp03i pp03j intensi pp04b1 pp04b2 pp04b3_mes pp04b3_ano pp04b3_dia pp04g pp05b2_mes pp05b2_ano pp05b2_dia pp05c_1 pp05c_3 pp05e pp05f pp05h pp06a pp06c pp06d pp06e pp06h pp07a pp07c pp07d pp07e pp07f1 pp07f2 pp07f3 pp07f4 pp07f5 pp07g1 pp07g2 pp07g3 pp07g4 pp07g_59 pp07i pp07j pp07k pp08d1 pp08d4 pp08f1 pp08j2 pp08j3 pp09a pp09a_esp pp09b pp09c pp09c_esp pp10a pp10c pp10d pp10e pp11a pp11b1 pp11b2_mes pp11b2_ano pp11b2_dia pp11c pp11c99 pp11d_cod pp11g_ano pp11g_mes pp11g_dia pp11l1 pp11m pp11n pp11o pp11p pp11q pp11r pp11s pp11t, replace

***Identificacion*** (FUNCA OK)

lab var codusu "Codigo para distinguir VIVIENDAS"

lab var ano4 "Año de relevamiento"

lab var trimestre "Ventana de observacion"

lab var nro_hogar "Codigo para distinguir HOGARES"
lab def catnro_hogar 51 "Servicio domestico en hogares" 
lab def catnro_hogar 71 "Pensionistas en hogares", add
lab val nro_hogar catnro_hogar

lab var componente "Numero de componente"
lab val componente catnro_hogar

lab var h15 "Entrevista individual realizada"
lab def cath15 1 "Si"
lab def cath15 2 "No", add
lab val h15 cath15

lab var region "Codigo de region"
lab def catregion 1 "Gran Buenos Aires"
lab def catregion 40 "Noroeste", add
lab def catregion 41 "Nordeste", add
lab def catregion 42 "Cuyo", add
lab def catregion 43 "Pampeana", add
lab def catregion 44 "Patagonica", add
lab val region catregion


lab var aglomerado "Codigo de Aglomerado"
lab def cataglomerado 2 "Gran La Plata"
lab def cataglomerado 3 "Bahia Blanca - Cerri", add
lab def cataglomerado 4 "Gran Rosario", add
lab def cataglomerado 5 "Gran Santa Fe", add
lab def cataglomerado 6 "Gran Parana", add
lab def cataglomerado 7 "Posadas", add
lab def cataglomerado 8 "Gran Resistencia", add
lab def cataglomerado 9 "Cdro. Rivadavia - R.Tilly", add
lab def cataglomerado 10 "Gran Mendoza", add
lab def cataglomerado 12 "Corrientes", add
lab def cataglomerado 13 "Gran Cordoba", add
lab def cataglomerado 14 "Concordia", add
lab def cataglomerado 15 "Formosa", add
lab def cataglomerado 17 "Neuquen – Plottier", add
lab def cataglomerado 18 "S.del Estero - La Banda", add
lab def cataglomerado 19 "Jujuy - Palpala", add
lab def cataglomerado 20 "Rio Gallegos", add
lab def cataglomerado 22 "Gran Catamarca", add
lab def cataglomerado 23 "Salta", add
lab def cataglomerado 25 "La Rioja", add
lab def cataglomerado 26 "San Luis - El Chorrillo", add
lab def cataglomerado 27 "Gran San Juan", add
lab def cataglomerado 29 "Gran Tucuman - T. Viejo", add
lab def cataglomerado 30 "Santa Rosa - Toay", add
lab def cataglomerado 31 "Ushuaia - Rio Grande", add
lab def cataglomerado 32 "Ciudad de Bs As", add
lab def cataglomerado 33 "Partidos del GBA", add
lab def cataglomerado 34 "Mar del Plata - Batan", add
lab def cataglomerado 36 "Rio Cuarto", add
lab def cataglomerado 38 "San Nicolas – Villa Constitucion", add
lab def cataglomerado 91 "Rawson – Trelew", add
lab def cataglomerado 93 "Viedma – Carmen de Patagones", add
lab val aglomerado cataglomerado

lab var pondera "Ponderacion"

***Caracteristicas de los miembros del hogar (cuestionario del hogar)*** (FUNCA OK)

lab var ch03 "Relacion de parentesco"
lab def catch03 1 "Jefe/a"
lab def catch03 2 "Conyuge/Pareja",add
lab def catch03 3 "Hijo/Hijastro/a",add
lab def catch03 4 "Yerno/Nuera",add
lab def catch03 5 "Nieto/a",add
lab def catch03 6 "Madre/Padre",add
lab def catch03 7 "Suegro/a",add
lab def catch03 8 "Hermano/a",add
lab def catch03 9 "Otros Familiares",add
lab def catch03 10 "No Familiares",add
lab val ch03 catch03

lab var ch04 "Sexo"
lab def catch04 1 "Varon"
lab def catch04 2 "Mujer", add
lab val ch04 catch04

lab var ch05 "Fecha de nacimiento"

lab var ch06 "¿Cuantos años cumplidos tiene?"

lab var ch07 "¿Actualmente esta...(Estado civil)"
lab def catch07 1 "Unido"
lab def catch07 2 "Casado", add
lab def catch07 3 "Separado/a o divorciado/a", add
lab def catch07 4 "Viudo/a", add
lab def catch07 5 "Soltero/a", add
lab def catch07 9 "Ns./Nr.", add
lab val ch07 catch07

lab var ch08 "¿Tiene algun tipo de cobertura medica por la que paga o le descuentan?"
lab def catch08 1 "Obra social (incluye PAMI)"
lab def catch08 2 "Mutual / Prepaga / Servicio de emergencia", add
lab def catch08 3 "Planes y seguros publicos", add
lab def catch08 4 "No paga ni le descuentan", add
lab def catch08 9 "Ns./Nr.", add
lab def catch08 12 "Obra social y mutual/prepaga/servicio de emergencia", add
lab def catch08 13 "Obra social y Planes y Seguros Publicos", add
lab def catch08 23 "Mutual/prepaga/servicio de emergencia/ Planes y Seguros Publicos", add
lab def catch08 123 "Obra social, mutual/prepaga/servicio de emergencia y Planes y Seguros Publicos", add
lab val ch08 catch08

lab var ch09 "¿Sabe leer y escribir?"
lab def catch09 1 "Si"
lab def catch09 2 "No", add
lab def catch09 3 "Menor de 2 años", add
lab def catch09 9 "Ns./Nr.", add
lab val ch09 catch09

lab var ch10 "¿Asiste o asistio a algun establecimiento educativo?(colegio, escuela, universidad)"
lab def catch10 1 "Si, asiste"
lab def catch10 2 "No asiste, pero asistio", add
lab def catch10 3 "Nunca asistio", add
lab def catch10 9 "Ns./Nr.", add
lab val ch10 catch10

lab var ch11 "Ese establecimiento es..."
lab def catch11 1 "Publico"
lab def catch11 2 "Privado", add
lab def catch11 9 "Ns./Nr.", add
lab val ch11 catch11

lab var ch12 "¿Cual es el nivel más alto que cursa o curso?"
lab def catch12 1 "Jardin/ Preescolar"
lab def catch12 2 "Primario", add
lab def catch12 3 "EGB", add
lab def catch12 4 "Secundario", add
lab def catch12 5 "Polimodal", add
lab def catch12 6 "Terciario", add
lab def catch12 7 "Universitario", add
lab def catch12 8 "Posgrado Univ.", add
lab def catch12 9 "Educacion especial (discapacitado)", add
lab def catch12 99 "Ns./Nr.", add
lab val ch12 catch12

lab var ch13 "¿Finalizo ese nivel?"
lab def catsn9 1 "Si"
lab def catsn9 2 "No", add
lab def catsn9 9 "Ns./Nr.", add
lab val ch13 catsn9

lab var ch14 "¿Cual fue el ultimo año que aprobo?"
destring ch14, replace
lab def catch14 0 "Ninguno"
lab def catch14 1 "Primero", add
lab def catch14 2 "Segundo", add
lab def catch14 3 "Tercero", add
lab def catch14 4 "Cuarto", add
lab def catch14 5 "Quinto", add
lab def catch14 6 "Sexto", add
lab def catch14 7 "Septimo", add
lab def catch14 8 "Octavo", add
lab def catch14 9 "Noveno", add
lab def catch14 98 "Educacion especial", add
lab def catch14 99 "Ns./Nr.", add
lab val ch14 catch14

lab var ch15 "¿Donde nacio?"
lab def catch15 1 "En esta localidad"
lab def catch15 2 "En otra localidad de esta provincia", add
lab def catch15 3 "En otra provincia (especificar)", add
lab def catch15 4 "En un pais limitrofe (especificar Brasil, Bolivia, Chile, Paraguay, Uruguay)", add
lab def catch15 5 "En otro pais (especificar)", add
lab def catch15 9 "Ns./Nr.", add
lab val ch15 catch15

lab var ch15_cod "Especificar: contiene el codigo que corresponde a 3,4,5"

lab var ch16 "¿Donde vivia hace 5 años?"
lab def catch16 1 "En esta localidad"
lab def catch16 2 "En otra localidad de esta provincia", add
lab def catch16 3 "En otra provincia (especificar)", add
lab def catch16 4 "En un pais limitrofe (especificar Brasil, Bolivia, Chile, Paraguay, Uruguay)", add
lab def catch16 5 "En otro pais (especificar)", add
lab def catch16 6 "No habia nacido", add
lab def catch16 9 "Ns./Nr.", add
lab val ch16 catch16

lab var ch16_cod "Especificar: contiene el codigo que corresponde a 3,4,5"

lab var nivel_ed "Nivel educativo"
lab def catned 1 "Primaria Incompleta(incluye educacion especial)"
lab def catned 2 "Primaria Completa", add
lab def catned 3 "Secundaria Incompleta", add
lab def catned 4 "Secundaria Completa", add
lab def catned 5 "Superior Universitaria Incompleta", add
lab def catned 6 "Superior Universitaria Completa", add
lab def catned 7 "Sin instruccion", add
lab def catned 9 "Ns./ Nr.", add
lab val nivel_ed catned

lab var estado "Condicion de actividad"
lab def catestado 0 "Entrevista individual no realizada (no respuesta al Cuestionario Individual)"
lab def catestado 1 "Ocupado", add
lab def catestado 2 "Desocupado", add
lab def catestado 3 "Inactivo", add
lab def catestado 4 "Menor de 10 años", add
lab val estado catestado

lab var cat_ocup "Categoria ocupacional"
lab def catcatocup 1 "Patron"
lab def catcatocup 2 "Cuenta propia", add
lab def catcatocup 3 "Obrero o empleado", add
lab def catcatocup 4 "Trabajador familiar sin remuneracion", add
lab def catcatocup 9 "Ns./Nr.", add
lab val cat_ocup catcatocup

lab var cat_inac "Categoria de inactividad"
lab def catcatinac 1 "Jubilado/ Pensionado"
lab def catcatinac 2 "Rentista", add
lab def catcatinac 3 "Estudiante", add
lab def catcatinac 4 "Ama de casa", add
lab def catcatinac 5 "Menor de 6 años", add
lab def catcatinac 6 "Discapacitado", add
lab def catcatinac 7 "Otros", add
lab val cat_inac catcatinac

lab var imputa "Casos imputados"

lab var pp02c1 "Busco trabajo: Hizo contactos, entrevistas"
lab def catsn 1 "Si"
lab def catsn 2 "No", add
lab val pp02c1 catsn

lab var pp02c2 "Busco trabajo: Mando curriculum, puso, contesto avisos (diarios, internet)"
lab val pp02c2 catsn

lab var pp02c3 "Busco trabajo: Se presento en establecimientos"
lab val pp02c3 catsn

lab var pp02c4 "Busco trabajo: Hizo algo para ponerse por su cuenta"
lab val pp02c4 catsn

lab var pp02c5 "Busco trabajo: Puso carteles en negocios, pregunto en el barrio"
lab val pp02c5 catsn

lab var pp02c6 "Busco trabajo: Consulto a parientes, amigos"
lab val pp02c6 catsn

lab var pp02c7 "Busco trabajo: Se anoto en bolsas, listas, planes de empelo, agencias, contratistas, o alguien le esta buscando trabajo"
lab val pp02c7 catsn

lab var pp02c8 "De otra forma activa"
lab val pp02c8 catsn

lab var pp02e "Durante esos 30 dias, no busco trabajo porque..."
lab def catpp02e 1 "esta suspendido"
lab def catpp02e 2 "ya tiene trabajo asegurado", add
lab def catpp02e 3 "se canso de buscar trabajo", add
lab def catpp02e 4 "hay poco trabajo en esta epoca del año", add
lab def catpp02e 5 "por otras razones", add
lab val pp02e catpp02e

lab var pp02h "En los ultimos 12 meses ¿busco trabajo en algun momento?"
lab val pp02h catsn

lab var pp02i "En los ultimos 12 meses ¿trabajo en algun momento?"
lab val pp02i catsn

***Ocupados que trabajaron en la semana de referencia***

lab var pp03c "La semana pasada, ¿tenia..."
lab def catpp03c 1 "un solo empleo/ocupacion/ actividad"
lab def catpp03c 2 "mas de un empleo/ocupacion/ actividad", add
lab val pp03c catpp03c

lab var pp03d "Cantidad de ocupaciones"

lab var pp3e_tot "Total de horas que trabajo en la semana en la ocupacion principal"

lab var pp3f_tot "Total de horas que trabajo en la semana en otras ocupaciones"

lab var pp03g "La semana pasada, ¿queria trabajar mas horas?"
lab val pp03g catsn9

lab var pp03h "¿Si hubiera conseguido mas horas..."
lab def catpp03h 1 "podia trabajarlas esa semana"
lab def catpp03h 2 "podia empezar a trabajarlas en dos semanas a mas tardar", add
lab def catpp03h 3 "no podia trabajar mas horas", add
lab def catpp03h 9 "Ns./Nr.", add
lab val pp03h catpp03h

***Para todos los ocupados***

lab var pp03i "En los ultimos treinta dias, ¿busco trabajar mas horas?"
lab val pp03i catsn9

lab var pp03j "Aparte de este/os trabajo/s,¿estuvo buscando algun empleo/ocupacion/ actividad?"
lab val pp03j catsn9

lab var intensi "Intensidad empleo"
lab def catintensi 1 "Subocupado por insuficiencia horaria"
lab def catintensi 2 "Ocupado pleno", add
lab def catintensi 3 "Sobreocupado", add
lab def catintensi 4 "Ocupado que no trabajo en la semana", add
lab def catintensi 9 "Ns./Nr.", add
lab val intensi catintensi

***Ocupacion principal***

lab var pp04a "El negocio/empresa/institucion/actividad en la que trabaja es...(se refiere al que trabaja mas horas semanales)"
lab def catpp04a 1 "Estatal"
lab def catpp04a 2 "Privada", add
lab def catpp04a 3 "De otro tipo (especificar)", add
lab def catpp04a 9 "Ns./Nr.", add
lab val pp04a catpp04a

lab var pp04b_cod "¿A que se dedica o produce el negocio/empresa/institucion? (CAES-Mercosur)"

lab var pp04b1 "Si presta servicio domestico en hogares particulares"
lab val pp04b1 catsn

lab var pp04b2 "¿En cuantas casas trabaja? (cantidad)"

***¿Cuanto tiempo hace que trabaja alli? (en la casa que tiene mas horas)***

lab var pp04b3_mes "Meses que trabaja alli"
lab var pp04b3_ano "Años que trabaja alli"
lab var pp04b3_dia "Dias que trabaja alli"

lab var pp04c "¿Cuantas personas, incluido...trabajan alli en total?"
lab def catpp04c 1 "1 persona"
lab def catpp04c 2 "2 personas", add
lab def catpp04c 3 "3 personas", add
lab def catpp04c 4 "4 personas", add
lab def catpp04c 5 "5 personas", add
lab def catpp04c 6 "de 6 a 10 personas" , add
lab def catpp04c 7 "de 11 a 25 personas", add
lab def catpp04c 8 "de 26 a 40 personas", add
lab def catpp04c 9 "de 41 a 100 personas", add
lab def catpp04c 10 "de 101 a 200 personas", add
lab def catpp04c 11 "de 201 a 500 personas", add
lab def catpp04c 12 "mas de 500 personas", add
lab def catpp04c 99 "Ns./Nr.", add
lab val pp04c catpp04c

lab var pp04c99 "¿Cuantas personas, incluido...trabajan alli en total? (para los que responden pp04c=99)"
lab def catpp04c99 1 "hasta 5"
lab def catpp04c99 2 "de 6 a 40", add
lab def catpp04c99 3 "mas de 40", add
lab def catpp04c99 9 "Ns./Nr.", add
lab val pp04c99 catpp04c99

lab var pp04d_cod "Codigo de Ocupacion (CNO-2001)"

lab var pp04g "Donde realiza principalmente sus tareas?"
lab def catpp04g 1 "En un local/oficina/establecimiento negocio/taller/chacra/finca", add
lab def catpp04g 2 "En puesto o kiosco fijo callejero", add
lab def catpp04g 3 "En vehiculos: bicicleta/moto/autos/barcos/botes (no incluye servicio de transporte)", add
lab def catpp04g 4 "En vehiculo para transporte de personasy mercaderias-aereos, maritimo, terrestre incluye taxis, colectivos, camiones,furgones, transporte de combustible, mudanzas, etc.)", add
lab def catpp04g 5 "En obras en construccion, de infraestructura, mineria o similares", add
lab def catpp04g 6 "En esta vivienda(sin lugar exclusivo)", add
lab def catpp04g 7 "En la vivienda del socio o del patron", add
lab def catpp04g 8 "En el domicilio/local de los clientes", add
lab def catpp04g 9 "En la calle/espacios publicos/ambulante/de casa en casa/puesto movil callejero", add
lab def catpp04g 10 "En otro lugar (especificar)", add
lab def catpp04g 99 "Ns./Nr.", add
lab val pp04g catpp04g

***Ocupacion principal de los trabajadores independientes***

lab var pp05b2_mes "Meses que trabaja en ese empleo en forma continua"
lab var pp05b2_ano "Años que trabaja en ese empleo en forma continua"
lab var pp05b2_dia "Dias que trabaja en ese empleo en forma continua"
 
lab var pp05c_1 "¿En ese negocio/empresa/actividad, tiene maquinaria y equipos?"
lab def catpp05c_123 1 "propio (del negocio)"
lab def catpp05c_123 2 "prestado/alquilado", add
lab def catpp05c_123 3 "no tiene", add
lab def catpp05c_123 9 "Ns./Nr.", add
lab val pp05c_1 catpp05c_123
 
lab var pp05c_2 "¿En ese negocio/empresa/actividad, tiene local(incluye kiosco/puesto fijo)?" 
lab val pp05c_2 catpp05c_123

lab var pp05c_3 "¿En ese negocio/empresa/actividad, tiene vehiculo?" 
lab val pp05c_3 catpp05c_123

lab var pp05e "¿Para la actividad del negocio, en los ultimos 3 meses, tuvo que gastar en la compra de materias primas, productos, pagar servicios u otros gastos?"
lab val pp05e catsn

lab var pp05f "¿Ese negocio/empresas/actividad, trabaja habitualmente para...?"
lab def catpp05f 6 "un solo cliente? (persona, empresa)"
lab def catpp05f 7 "distintos clientes? (incluye publico en general)", add
lab val pp05f catpp05f

lab var pp05h "¿Durante cuanto tiempo ha estado trabajando en ese empleo en forma continua? (con interrupciones laborales no mayores de 15 dias)"
lab def catpp05h 1 "menos de 1 mes"
lab def catpp05h 2 "de 1 a 3 meses", add
lab def catpp05h 3 "mas de 3 a 6 meses", add
lab def catpp05h 4 "mas de 6 meses a 1 año", add
lab def catpp05h 5 "mas de 1 a 5 años", add
lab def catpp05h 6 "mas de 5 años", add
lab def catpp05h 9 "Ns./Nr.", add
lab val pp05h catpp05h

***Ingresos de la ocupacion principal de los trabajadores independientes ***

lab var pp06a "En ese negocio/empresa/actividad ¿tiene socios o familiares asociados?"
lab val pp06a catsn

lab var pp06c "Monto de ingreso de patrones y cta.propia sin socios"

lab var pp06d "Monto de ingreso de patrones y cta.propia con socios"

lab var pp06e "¿Ese negocio/empresa/actividad...?"
lab def catpp06e 1 "es una sociedad juridicamente constituida?(SA, SRL, Comandita por acciones, etc.)"
lab def catpp06e 2 "es una sociedad de otra forma legal", add
lab def catpp06e 3 "o es una sociedad convenida de palabra", add
lab val pp06e catpp06e

lab var pp06h "¿Es una actividad familiar? (solo para 2 y 3 de PP06E)"
lab val pp06h catsn

***Ocupacion principal de los asalariados (excepto servicio domestico)***

lab var pp07a "¿Cuanto tiempo hace que esta trabajando en ese empleo en forma continua? (sin interrupciones de la relacion laboral en la misma empresa/negocio/institucion)"
lab def catpp07a 1 "menos de 1 mes"
lab def catpp07a 2 "1 a 3 meses", add
lab def catpp07a 3 "mas de 3 a 6 meses", add
lab def catpp07a 4 "mas de 6 a 12 meses", add
lab def catpp07a 5 "mas de 1 a 5 años", add
lab def catpp07a 6 "mas de 5 años", add
lab def catpp07a 9 "Ns./Nr.", add
lab val pp07a catpp07a

lab var pp07c "¿Ese empleo tiene tiempo de finalizacion?"
lab def catpp07c 1 "Si (incluye changa, trabajo transitorio, por tarea u obra, suplencia, etc"
lab def catpp07c 2 "No, (incluye permanente, fijo, estable, de planta)", add
lab def catpp07c 9 "Ns./Nr.", add
lab val pp07c catpp07c

lab var pp07d "¿Por cuanto tiempo es ese trabajo? (Para los que tienen en PP07C= 1)"
lab def catpp07d 1 "solo fue esa vez/solo cuando lo llaman"
lab def catpp07d 2 "hasta 3 meses", add
lab def catpp07d 3 "mas de 3 a 6 meses", add
lab def catpp07d 4 "mas de 6 a 12 meses", add
lab def catpp07d 5 "mas de 1 año", add
lab def catpp07d 9 "Ns./Nr.", add
lab val pp07d catpp07d

lab var pp07e "¿Ese trabajo es...?"
lab def catpp07e 1 "un plan de empleo"
lab def catpp07e 2 "un periodo de prueba", add
lab def catpp07e 3 "una beca/pasantia/aprendizaje", add
lab def catpp07e 4 "ninguno de estos",add
lab def catpp07e 9 "Ns./Nr.",add
lab val pp07e catpp07e

***Ocupacion principal de los asalariados (incluido servicio domestico)***

lab var pp07f1 "¿En este trabajo le dan de comer gratis en el lugar de trabajo?"
lab val pp07f1 catsn9

lab var pp07f2 "¿En este trabajo le dan vivienda?"
lab val pp07f2 catsn9

lab var pp07f3 "¿En este trabajo le dan algun producto o mercaderia?"
lab val pp07f3 catsn9

lab var pp07f4 "¿En este trabajo le dan algun otro beneficio? (automovil, telefono celular, pasajes, etc.)?"
lab val pp07f4 catsn9

lab var pp07f5 "¿En este trabajo no recibe ningun beneficio?"
lab def catpp07f5 5 "Si"
lab val pp07f5 catpp07f5

lab var pp07g1 "¿En este trabajo tiene vacaciones pagas?"
lab val pp07g1 catsn9

lab var pp07g2 "¿En este trabajo tiene aguinaldo?"
lab val pp07g2 catsn9

lab var pp07g3 "¿En este trabajo tiene dias pagos por enfermedad?"
lab val pp07g3 catsn9

lab var pp07g4 "¿En este trabajo tiene obra social?"
lab val pp07g4 catsn9

lab var pp07g_59 "¿En este trabajo no tiene ninguno?"
lab def catpp07g_59 5 "Si"
lab val pp07g_59 catpp07g_59

lab var pp07h "¿Por ese trabajo tiene descuento jubilatorio?"
lab val pp07h catsn

lab var pp07i "¿Aporta por si mismo a algun sistema jubilatorio?"
lab val pp07i catsn9

lab var pp07j "¿El turno habitual de trabajo es...?"
lab def catpp07j 1 "de dia? (mañana/tarde)"
lab def catpp07j 2 "de noche?", add
lab def catpp07j 3 "de otro tipo? (rotativo, dia y noche, guardias con franco)", add
lab def catpp07j 9 "Ns./Nr.", add
lab val pp07j catpp07j

lab var pp07k "¿Cuando cobra...?"
lab def catpp07k 1 "le dan recibo con sello/membrete/firma del empleador"
lab def catpp07k 2 "le dan un papel/recibo sin nada", add
lab def catpp07k 3 "entrega una factura", add
lab def catpp07k 4 "no le dan ni entrega nada", add
lab def catpp07k 5 "no cobra, es trabajador sin pago/ad-honorem", add
lab def catpp07k 9 "Ns./Nr.", add
lab val pp07k catpp07k

***Ingresos de la ocupacion principal de los asalariados***

lab var pp08d1 "¿Cuanto cobro por ese mes por esos conceptos? Monto total de sueldos/jornales, salario familiar, horas extras, otras bonificaciones habituales y tickets, vales o similares"
lab var pp08d4 "Monto percibido en tickets"
lab var pp08f1 "Monto en pesos cobrado por Comision por venta/produccion"
lab var pp08f2 "Monto en pesos cobrado por Propinas"
lab var pp08j1 "Monto aguinaldo"
lab var pp08j2 "Monto otras bonificaciones no habituales"
lab var pp08j3 "Monto retroactivos"

***Movimientos interurbanos (solo para ocupados)***

lab var pp09a "En su ocupacion (o en la de mas horas)¿trabaja en...? (SOLO OCUPADOS DE: CIUDAD DE BUENOS AIRES – Partidos del GBA)"
lab def catpp09a 1 "Ciudad de Buenos Aires"
lab def catpp09a 2 "Partidos del GBA", add
lab def catpp09a 3 "Ambos", add
lab def catpp09a 4 "En otro lugar", add
lab def catpp09a 9 "Ns./Nr.", add
lab val pp09a catpp09a

lab var pp09a_esp "Especificar: contiene la descripcion de otro lugar"

lab var pp09b "En su ocupacion (o en la de mas horas)¿trabaja en esta ciudad? (SOLO OCUPADOS DE: POSADAS, FORMOSA, CORRIENTES, RESISTENCIA, SANTA FE, Y PARANA Y NEUQUEN)"
lab val pp09b catsn

lab var pp09c "¿Donde trabaja...?"
lab def catpp09c 1 "en otro lugar de esta provincia"
lab def catpp09c 2 "en otra provincia", add
lab def catpp09c 3 " en otro pais", add
lab val pp09c catpp09c

lab var pp09c_esp "Descripcion de otro lugar (segun pregunta PP09C)"

***Desocupados***

lab var pp10a "¿Cuanto hace que esta buscando trabajo?"
lab def catpp10a 1 "menos de 1 mes"
lab def catpp10a 2 "de 1 a 3 meses", add
lab def catpp10a 3 "mas de 3 a 6 meses", add
lab def catpp10a 4 "mas de 6 a 12 meses", add
lab def catpp10a 5 "mas de 1 año", add
lab def catpp10a 9 "Ns./Nr.", add
lab val pp10a catpp10a

lab var pp10c "¿Durante ese tiempo hizo algun trabajo/ changa?"
lab val pp10c catsn

lab var pp10d "¿Ha trabajado alguna vez?"
lab val pp10d catsn9

lab var pp10e "¿Cuanto tiempo hace que termino su ultimo trabajo/changa...?"
lab def catpp10e 1 "menos de 1 mes"
lab def catpp10e 2 "de 1 a 3 meses", add
lab def catpp10e 3 "mas de 3 a 6 meses", add
lab def catpp10e 4 "mas de 6 a 12 meses", add
lab def catpp10e 5 "mas de 1 a 3 años", add
lab def catpp10e 6 "mas de 3 años", add
lab def catpp10e 9 "Ns./Nr.", add
lab val pp10e catpp10e


***Desocupados con empleo anterior: Última ocupacion/changa (finalizada hace 3 años o menos)***

lab var pp11a "El negocio/empresa/institucion/ actividad en la que trabajaba era..."
lab val pp11a catpp04a

lab var pp11b_cod "A que se dedicaba o que producia ese negocio/empresa/institucion?(CAES-MERCOSUR)"

lab var pp11b1 "Si prestaba servicios domestico en hogares particulares"
lab val pp11b1 catsn9

lab var pp11b2_mes "Meses que trabajo alli"
lab var pp11b2_ano "Años que trabajo alli"
lab var pp11b2_dia "Dias que trabajo alli"
 
lab var pp11c "¿Cuantas personas, incluido...trabajaban alli en total?" 
lab val pp11c catpp04c

lab var pp11c99 "¿Cuantas personas, incluido...trabajaban alli en total?(para los que responden PP11c=99)"
lab val pp11c99 catpp04c99

lab var pp11d_cod "Como se llamaba la ocupacion que tenia?(CNO-2001)"

lab var pp11g_ano "Años seguidos que estuvo trabajando en ese lugar"
lab var pp11g_mes "Meses seguidos que estuvo trabajando en ese lugar"
lab var pp11g_dia "Dias seguidos que estuvo trabajando en ese lugar"

lab var pp11l "¿Cual fue la razon principal por la que dejo esa actividad?"
lab def catpp11l 1 "falta de clientes/clientes que no pagan"
lab def catpp11l 2 "falta de capital/equipamiento", add
lab def catpp11l 3 "trabajo estacional", add
lab def catpp11l 4 "tenia gastos demasiado altos", add
lab def catpp11l 5 "otras causas laborales (especificar)", add
lab def catpp11l 6 "jubilacion/retiro", add
lab def catpp11l 7 "causas personales (matrimonio, embarazo cuidado de hijos o familiar, estudio, enfermedad)", add
lab def catpp11l 9 "Ns./Nr.", add
lab val pp11l catpp11l

lab var pp11l1 "¿Ese trabajo era...?"
lab def catpp11l1 1 "una changa, trabajo transitorio, por tarea u obra, suplencia, etc"
lab def catpp11l1 2 "un trabajo permanente, fijo, estable, de planta, etc.", add
lab def catpp11l1 3 "Ns./Nr.",add
lab val pp11l1 catpp11l1

lab var pp11m "¿Ese trabajo era...?"
lab def catpp11m 1 "un plan de empleo"
lab def catpp11m 2 "un periodo de prueba", add
lab def catpp11m 3 "otro tipo de trabajo", add
lab val pp11m catpp11m

lab var pp11n "¿En ese trabajo le hacian descuento jubilatorio?"
lab val pp11n catsn9

lab var pp11o "¿Cual fue la razon principal por la que dejo ese trabajo?"
lab def catpp11o 1 "despido/cierre (quiebra/venta/traslado de la empresa reestructuracion o recorte de personal/falta de ventas o clientes)"
lab def catpp11o 2 "por retiro voluntario del sector publico", add
lab def catpp11o 3 "por jubilacion", add
lab def catpp11o 4 "fin de trabajo temporario/ estacional", add
lab def catpp11o 5 "le pagaban poco/no le pagaban", add
lab def catpp11o 6 "malas relaciones laborales/malas condiciones de trabajo(insalubre, cambios de horarios, etc.)", add
lab def catpp11o 7 "renuncia obligada/pactada", add
lab def catpp11o 8 "otras causas laborales(especificar)", add
lab def catpp11o 9 "por razones personales(matrimonio, embarazo, cuidado de hijos o familia, estudio, enfermedad)", add
lab val pp11o catpp11o

lab var pp11p "¿Cerro la empresa? (Para quienes responden en pp11o=1)"
lab val pp11p catsn9

lab var pp11q "¿Fue la unica persona que quedo sin trabajo?"
lab val pp11q catsn9

lab var pp11r "¿Le enviaron telegrama?"
lab val pp11r catsn

lab var pp11s "¿Le pagaron indemnizacion?"
lab val pp11s catsn

lab var pp11t "¿Esta cobrando seguro de desempleo?"
lab val pp11t catsn9

***Ingresos de la ocupacion principal***

lab var p21 "MONTO DE INGRESO DE LA OCUPACIÓN PRINCIPAL"
lab var decocur "Nº de decil de ingreso de la ocupacion principal del TOTAL EPH"
lab var idecocur "Nº de decil de ingreso de la ocupacion principal del INTERIOR EPH"
lab var rdecocur "Nº de decil de ingreso de la ocupacion principal de la REGION"
lab var gdecocur "Nº de decil de ingreso de la ocupacion principal del CONJUNTO DE AGLOMERADOS DE 500 MIL Y MAS HABITANTES"
lab var pdecocur "Nº de decil de ingreso de la ocupacion principal del CONJUNTO DE AGLOMERADOS DE MENOS DE 500 MIL HABITANTES"
lab var adecocur "Nº de decil de ingreso de la ocupacion principal del AGLOMERADO"
lab var pondiio "Ponderador del ingreso de la ocupacion principal"

***Ingreso de otras ocupaciones***

lab var tot_p12 "MONTO DE INGRESO DE OTRAS OCUPACIONES.(Incluye: ocupacion secundaria, ocupacion previa a la semana de referencia, deudas/retroactivos por ocupaciones anteriores al mes de referencia, etc)"

***Ingreso total individual***

lab var p47t "MONTO DE INGRESO TOTAL INDIVIDUAL(sumatoria ingresos laborales y no laborales)"
lab var decindr "Nº de decil de ingreso total individual del TOTAL EPH"
lab var idecindr "Nº de decil de ingreso total individual del INTERIOR EPH"
lab var rdecindr "Nº de decil de ingreso total individual de la REGION"
lab var gdecindr "Nº de decil de ingreso total individual del CONJUNTO DE AGLOMERADOS DE 500 MIL Y MAS HABITANTES"
lab var pdecindr "Nº de decil de ingreso total individual del CONJUNTO DE AGLOMERADOS DE MENOS DE 500 MIL HABITANTES"
lab var adecindr "Nº de decil de ingreso total individual del AGLOMERADO"
lab var pondii "Ponderador para ingreso total individual"

***Ingresos no laborales***

lab var v2_m "Monto del ingreso por JUBILACION O PENSION"
lab var v3_m "Monto del ingreso por INDEMNIZACION POR DESPIDO"
lab var v4_m "Monto del ingreso por SEGURO DE DESEMPLEO"
lab var v5_m "Monto del ingreso por SUBSIDIO O AYUDA SOCIAL (EN DINERO) DEL GOBIERNO, IGLESIAS, ETC."
lab var v8_m "Monto del ingreso por ALQUILER (VIVIENDA , TERRENO, OFICINA, ETC.) DE SU PROPIEDAD"
lab var v9_m "Monto del ingreso por GANANCIAS DE ALGUN NEGOCIO EN EL QUE NO TRABAJÓ"
lab var v10_m "Monto del ingreso por INTERESES O RENTAS POR PLAZOS FIJOS/INVERSIONES"
lab var v11_m "Monto del ingreso por BECA DE ESTUDIO"
lab var v12_m "Monto del ingreso por CUOTAS DE ALIMENTOS O AYUDA EN DINERO DE PERSONAS QUE NO VIVEN EN EL HOGAR"
lab var v18_m "Monto del ingreso por OTROS INGRESOS EN EFECTIVO (LIMOSNAS, JUEGOS DE AZAR, ETC.)"
lab var v19_am "Monto del ingreso por TRABAJO DE MENORES DE 10 AÑOS"
lab var v21_m "Monto del ingreso por aguinaldo"
lab var t_vi "MONTO TOTAL DE INGRESOS NO LABORALES"

***Ingreso total familiar***

lab var itf "MONTO DEL INGRESO TOTAL FAMILIAR"
lab var decifr "Nº de decil de ingreso total familiar del TOTAL EPH"
lab var idecifr "Nº de decil de ingreso total familiar del INTERIOR EPH"
lab var rdecifr "Nº de decil de ingreso total familiar de la REGION"
lab var gdecifr "Nº de decil de ingreso total familiar del CONJUNTO DE AGLOMERADOS DE 500 MIL Y MAS HABITANTES"
lab var pdecifr "Nº de decil de ingreso total familiar del CONJUNTO DE AGLOMERADOS DE MENOS DE 500 MIL HABITANTES"
lab var adecifr "Nº de decil de ingreso total familiar del AGLOMERADO"
 
 ***Ingreso per capita familiar***
 
lab var ipcf "MONTO DEL INGRESO PER CÁPITA FAMILIAR"
lab var deccfr "Nº de decil de ingreso per capita familiar del TOTAL EPH"
lab var ideccfr "Nº de decil de ingreso per capita familiar del INTERIOR EPH"
lab var rdeccfr "Nº de decil de ingreso per capita familiar de la REGION"
lab var gdeccfr "Nº de decil de ingreso per capita familiar del CONJUNTO DE AGLOMERADOS DE 500 MIL Y MAS HABITANTES"
lab var pdeccfr "Nº de decil de ingreso per capita familiar del CONJUNTO DE AGLOMERADOS DE MENOS DE 500 MIL HABITANTES"
lab var adeccfr "Nº de decil de ingreso per capita familiar del AGLOMERADO"
lab var pondih "Ponderador del ingreso total familiar y del ingreso per capita familiar, para hogares"





