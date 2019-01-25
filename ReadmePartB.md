# Serveis i Multimedia SIM - Project Mòdul AOS 



El cas pràctic consisteix en l'anàlisi, disseny i desenvolupament d'un servei web ReST que s'utilitzarà per a registrar l’usuari i un bug del test d'un joc. Les operacions necessàries seran: 1). Donar d’alta d'un nou usuari en la plataforma. Les dades necessàries seran Nom, cognom, data de naixement i correu electrònic (obligatoris), país naixement, país de residència i adreça (opcional). L'operació retornarà la identificació de l'usuari. 

This application have
* Usuari application serves from
http://localhost:808/usuari 

##Configurar
- Conectarse a Mysql
- Crear BD 
CREATE DATABASE aos
- Crear usuario gimbernatsim
- Configurar/Revisar fichero src/main/resources/application.properties:

spring.jpa.hibernate.ddl-auto=create

spring.datasource.url=jdbc:mysql://localhost:3306/aos

spring.datasource.username=gimbernatsim

spring.datasource.password=gimbernat

####Nota: Recordar
Cambiar spring.jpa.hibernate.ddl-auto=**create** por  
spring.jpa.hibernate.ddl-auto=**update** luego de la primera ejecución
cuando ser verifique que la tabla está creada. Sino, Spring volverá
a crear la tabla y se penderan los datos.

##Como Iniciar
    Run Aplication
    
##Operaciones disponibles

**-Alta de un bug: Operación POST /videojoc**		
	    Parámetros de entrada (Json)    String  videojoc;
                                        String  usuari;
                                        Date    dataDelBug;
                                        String  plataforma;
                                        String  paisDeConnexio;
                                        String  email;
                                        String  descripcioBreu;
                                        String  descripcio;
                                        String  categoria;
                                        String  prioritat;
                                        String  estat;  
	    Salida:    (Json)               Json http://localhost:808/bug/{videojoc bug} 
        Ejemplo:   
	     **curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "KingdomHearts", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PS4", "paisDeConnexio":"España", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'acció", "descripcio":"Nou joc","categoria":"Acció","prioritat":"Alta","estat":"Avançat"}' http://localhost:8080/bug
           curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "Fifa19", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PC", "paisDeConnexio":"España", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'esports", "descripcio":"Nou joc","categoria":"Esports","prioritat":"Mitjana","estat":"Atrassat"}' http://localhost:8080/bug
           curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "NBA19", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PS4", "paisDeConnexio":"España", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'esports", "descripcio":"Nou joc","categoria":"Esports","prioritat":"Baixa","estat":"Avançat"}' http://localhost:8080/bug**

**-Modificar un bug:  Operación PUT /usuari** 	
	    Parámetros de entrada (Json)    String  videojoc;
                                        String  usuari;
                                        Date    dataDelBug;
                                        String  plataforma;
                                        String  paisDeConnexio;
                                        String  email;
                                        String  descripcioBreu;
                                        String  descripcio;
                                        String  categoria;
                                        String  prioritat;
                                        String  estat; 
	    Salida:    (Json)               http://localhost:808/bug/{videojoc bug}
        Ejemplo: 
            **curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "KingdomHearts", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PC", "paisDeConnexio":"Italia", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'acció", "descripcio":"Nou joc","categoria":"Acció","prioritat":"Alta","estat":"Avançat"}' http://localhost:8080/bug/KingdomHearts**

**-Obtener todos los bugs: Operación GET /videojoc**  	
        Parámetros de entrada: NONE	
        Salida:  (Json)                  Lista de  {<bug>}
        Ejemplo: 
        **curl -i -X GET http://localhost:8080/bug**

**-Obtener los datos de un bug: Operación GET /bug/{videojoc bug}**  	
        Parámetros de entrada: NONE	
        Salida:    (Json)               http://localhost:808/usuari/{videojoc bug}
        Ejemplo: 
        **curl -i -X GET http://localhost:8080/bug/KingdomHearts**
	
**- Modificar un atributo de un bug: Operación PATCH /usuari** 
	    Parámetros de entrada (Json)    String  videojoc;
                                        String  usuari;
                                        Date    dataDelBug;
                                        String  plataforma;
                                        String  paisDeConnexio;
                                        String  email;
                                        String  descripcioBreu;
                                        String  descripcio;
                                        String  categoria;
                                        String  prioritat;
                                        String  estat;	
	    Salida:    (Json)               http://localhost:808/usuari/{videojoc bug}
        Ejemplo: 
        **curl -i -X PATCH -H "Content-Type:application/json" -d '{"videojoc":"KindomHearts" }' http://localhost:8080/bug/KingdomHearts**

**- Buscar functiones disponibles: Operación GET /bug/search**
        Parámetros de entrada: NONE	
        Salida:     Lista de funciones disponibles
        Ejemplo: 
        **curl -i -X GET http://localhost:8080/bug/search**
                
**- Encontrar por usuario: Operación  GET /search/findByUsuari** 	
        Parámtros de Entrada    String usuari 	
	    Salida:    (Json)               Json http://localhost:808/bug/{videojoc bug}
        Ejemplo: **curl -i -X GET  http://localhost:8080/bug/search/findByUsuari?usuari=Marcela**
        
**- Eliminar por usuario:   GET  /search/deleteByEmail**	
        Parámetros de Entrada    String usuari 	
	    Salida:     
        Ejemplo: **curl -i -X GET  http://localhost:8080/bug/search/deleteByUsuari?usuari=Marcela**


**- Eliminar por id: Operación DELETE /bug/{videojoc bug}** 	
        Parametros de Entrada    NONE 	
	    Salida:     
        Ejemplo: **curl -i -X DELETE  http://localhost:8080/bug/KingdomHearts**



**References**

https://www.callicoder.com/hibernate-spring-boot-jpa-one-to-many-mapping-example/
https://dzone.com/tutorials/java/hibernate/hibernate-example/hibernate-mapping-many-to-one-using-annotations-1.html


