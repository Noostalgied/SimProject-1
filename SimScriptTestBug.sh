#Test alta de bugs
curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "KingdomHearts", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PS4", "paisDeConnexio":"España", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'acció", "descripcio":"Nou joc","categoria":"Acció","prioritat":"Alta","estat":"Avançat"}' http://localhost:8080/bug
curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "Fifa19", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PC", "paisDeConnexio":"España", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'esports", "descripcio":"Nou joc","categoria":"Esports","prioritat":"Mitjana","estat":"Atrassat"}' http://localhost:8080/bug
curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "NBA19", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PS4", "paisDeConnexio":"España", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'esports", "descripcio":"Nou joc","categoria":"Esports","prioritat":"Baixa","estat":"Avançat"}' http://localhost:8080/bug
#Test modificación
curl -i -X POST -H "Content-Type:application/json" -d '{"videojoc": "KingdomHearts", "usuari": "Marcela","dataDelBug":"25/1/2018","plataforma":"PC", "paisDeConnexio":"Italia", "email":"marceloa@gmail.com", "descripcioBreu":"Joc d'acció", "descripcio":"Nou joc","categoria":"Acció","prioritat":"Alta","estat":"Avançat"}' http://localhost:8080/bug/KingdomHearts
#Test Obtener todos los datos
curl -i -X GET http://localhost:8080/bug
#Test Obtener los datos de 1 bug
curl -i -X GET http://localhost:8080/bug/KingdomHearts
#Test modificar un atributo
curl -i -X PATCH -H "Content-Type:application/json" -d '{"videojoc":"KindomHearts" }' http://localhost:8080/bug/KingdomHearts
#Test Lista de funciones disponibles 
curl -i -X GET http://localhost:8080/bug/search
#Test Buscar por usuario
curl -i -X GET  http://localhost:8080/bug/search/findByUsuari?usuari=Marcela
#Test Borrar por usuario
curl -i -X GET  http://localhost:8080/bug/search/deleteByUsuari?usuari=Marcela
#Test Borrar por videojuego
curl -i -X DELETE  http://localhost:8080/bug/KingdomHearts