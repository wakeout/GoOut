insert into Usuario (id, login, email, rol, password, borrado, nombre) values(1 ,'marcos', 'mlaina@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', false, 'Marcos')
insert into Usuario (id, login, email, rol, password, borrado, nombre) values(2 ,'victor', 'victga04@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', false, 'Victor')
insert into Usuario (id, login, email, rol, password, borrado, nombre) values(3 ,'ironman','ironman@ucm.es', 'usuario', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', false, 'Tony')
insert into Usuario (id, login, email, rol, password, borrado, nombre) values(4 ,'david','david@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', false, 'David')
insert into Usuario (id, login, email, rol, password, borrado, nombre) values(5 ,'batman', 'batman@ucm.es', 'usuario', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', false, 'Bruce')
insert into Usuario (id, login, email, rol, password, borrado, nombre) values(6 ,'freire', 'manu@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', false, 'Freire')

insert into foro values(1)
insert into foro values(2)
insert into foro values(3)
insert into foro values(4)
insert into foro values(5)
insert into foro values(6)
insert into foro values(7)
insert into foro values(8)
insert into foro values(9)
insert into foro values(10)

insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(1, 'cerves', 12, 'Madrid', 15, 'privada', 1, '1',false,'abierta')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(2, 'zombies',  4,'Navacerrada',  4, 'publica', 1, '2',false, 'cerrada')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(3, 'futbol',9,  'Madrid', 20, 'privada', 1, '3',false, 'abierta')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(4, 'xbox',9,  'Torrelodones', 20, 'publica', 4, '4',false, 'cerrada')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(5, 'concierto', 12, 'Barcelona', 15, 'publica', 4, '5',false, 'abierta')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(6, 'senderismo',  4,'Navacerrada', 4, 'publica', 4, '6',false, 'cerrada')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(7, 'fiesta',9,  'Ibiza', 20, 'publica', 5, '7',false, 'abierta')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(8, 'visitar la ciudad',9,  'Madrid', 20, 'publica', 6 , '8',false, 'cerrada')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(9, 'viaje a benidorm',9,  'Benidorm', 20, 'publica', 1, '9',false, 'abierta')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro, eliminado, estado) values(10, 'cable esquí en el lago',9,  'Asturias', 20, 'publica', 2 ,'10',false, 'cerrada')

insert into Registro values(1,1,1,1,1);
insert into Registro values(2,2,1,2,1);
insert into Registro values(3,1,5,1,5);
insert into Registro values(4,4,1,4,1);
insert into Registro values(5,5,2,5,2);
insert into Registro values(6,8,1,8,1);
insert into Registro values(7,8,2,8,2);
insert into Registro values(8,8,4,8,4);
insert into Registro values(9,8,5,8,5);
insert into Registro values(10,8,6,8,6);

insert into Mensaje (id, titulo,contenido, tipo,destinos,origen,leido) values(1, 'Hola MAN!','unos zombies?','ordinario',2,2,false)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen,leido) values(2, 'Como estas?','','ordinario',2,1,false)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen,leido) values(3, 'Vas a hacer algo el finde?','una barbacoa en mi casa? ','ordinario',4,1,false)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen,leido) values(4, 'Cuanto tiempo','Que tal el cine con Marina?','ordinario',1,2,false)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen,leido) values(5, 'Que pasa MAN','Man man man, nos vamos de viaje?','denuncia',2,4,false)

insert into hito (id, anuncio, id_actividad, completado) values (1, 'pagar alquiler del cohete espacial', '1', 'true')
insert into hito (id, anuncio, id_actividad, completado) values (2, 'estudiar las restricciones bd ', '1', 'false')
insert into hito (id, anuncio, id_actividad, completado) values (3, 'comprar material de mineria', '1',  'true')
insert into hito (id, anuncio, id_actividad, completado) values (4, 'mañana reunion de planificacion de viaje', '1', 'false')
insert into hito(id, anuncio, id_actividad, completado) values (6, 'Comprar cervezas', '1', 'true')
insert into hito(id, anuncio, id_actividad, completado) values (7, 'Alquilar canoas', '3', 'false')
insert into hito(id, anuncio, id_actividad, completado) values (8, 'Comprar hielos', '2', 'true')
insert into hito(id, anuncio, id_actividad, completado) values (9, 'uuuuu', '4', 'true')

insert into tag (id, nombre) values (1, 'bares')
insert into tag (id, nombre) values (2, 'deportes')
insert into tag (id, nombre) values (3, 'cine')
insert into tag (id, nombre) values (4, 'juegos')
insert into tag (id, nombre) values (5, 'montaña')
insert into tag (id, nombre) values (6, 'playa')
insert into tag (id, nombre) values (7, 'viaje')
insert into tag (id, nombre) values (8, 'fiesta')
insert into tag (id, nombre) values (9, 'biblio')
insert into tag (id, nombre) values (10, 'futbol')
insert into tag (id, nombre) values (11, 'siesta')
insert into tag (id, nombre) values (12, 'tele')

INSERT INTO TAG_ETIQUETADOS VALUES (1 ,1 )
INSERT INTO TAG_ETIQUETADOS VALUES (1 ,2 )
INSERT INTO TAG_ETIQUETADOS VALUES (2 ,1 )
INSERT INTO TAG_ETIQUETADOS VALUES (3 ,1 )
INSERT INTO TAG_ETIQUETADOS VALUES (4 ,1 )
INSERT INTO TAG_ETIQUETADOS VALUES (1 ,6 )
INSERT INTO TAG_ETIQUETADOS VALUES (3 ,2 )

insert into comentario (id, asunto, sugiero, id_foro, usuario, borrado) values (1, 'necesito que alguien me recoja!', false, '1', '4', false)
insert into comentario (id, asunto, sugiero, id_foro, usuario, borrado) values (2, 'Vale yo voy...espera...NO!', false,'1', '2', false)
insert into comentario (id, asunto, sugiero, borrado) values (3, 'que preferis que lleve peli o juego?', false, false)
insert into comentario (id, asunto, sugiero, borrado) values (4, 'Pizzas', false)
insert into comentario (id, asunto, sugiero, borrado) values (5, 'oye os parece bien que vayamos a por unas palomitas?', false, false)
insert into comentario (id, asunto, sugiero, borrado) values (6, 'si', false, false)
insert into comentario (id, asunto, sugiero, borrado) values (7, 'no', false, false)
insert into comentario (id, asunto, sugiero, borrado) values (8, 'me da pereza', false, false)
insert into comentario (id, asunto, sugiero, borrado) values (9, 'a las 9?', false, false)
insert into comentario (id, asunto, sugiero, borrado) values (10, 'vale', false, false)

insert into encuesta values(1, false, '3', '1')
insert into encuesta values(2, false, '4', '1')
insert into encuesta values(3, false,'5', '1')
insert into encuesta values(4, false, '9', '1')

insert into respuesta values(1, '2', '1', false)
insert into respuesta values(2, '4', '1', false)
insert into respuesta values(3, '6', '4', false)
insert into respuesta values(4, '7', '4', false)
insert into respuesta values(5, '8', '4', false)
insert into respuesta values(6, '10', '4', false)

insert into pago (id, descripcion, precio_individual, pagado, id_registro) values (1, 'contactar con David para pagar las entradas del concierto', 30, 'true', '1')
insert into pago (id, descripcion, precio_individual, pagado, id_registro) values (2, 'contactar con David para pagar las cervezas', 3, 'true', '1')

insert into usuario_amigos(usuario, amigos)values(1,2)
insert into usuario_amigos(usuario, amigos)values(2,1)
insert into usuario_amigos(usuario, amigos)values(1,4)
insert into usuario_amigos(usuario, amigos)values(4,1)
