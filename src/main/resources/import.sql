insert into Usuario (id, login, email, rol, password) values(1 ,'marquitos', 'mlaina@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, email, rol, password) values(2 ,'victor', 'victga04@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, email, rol, password) values(4 ,'david','david@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, email, rol, password) values(5 ,'jorge','jorge@ucm.es', 'usuario', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, email, rol, password) values(6 ,'freire', 'manu@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')

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

insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(1, 'cerves', 12, 'Madrid', 15, 'privada', 1, '1')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(2, 'zombies',  4,'Madrid',  4, 'publica', 1, '2')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(3, 'futbol',9,  'Madrid', 20, 'privada', 1, '3')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(4, 'xbox',9,  'Madrid', 20, 'publica', 2, '4')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(5, 'concierto', 12, 'Madrid', 15, 'publica', 4, '5')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(6, 'senderismo',  4,'Madrid', 4, 'publica', 4, '6')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(7, 'fiesta',9,  'Madrid', 20, 'publica', 5, '7')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(8, 'visitar la ciudad',9,  'Madrid', 20, 'publica', 6 , '8')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(9, 'viaje a benidorm',9,  'Madrid', 20, 'publica', 1, '9')
insert into Actividad (id, nombre, npersonas, localizacion, max_personas, privacidad, creador,foro) values(10, 'cable esquí en el lago',9,  'Madrid', 20, 'publica', 2 ,'10')

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

insert into Mensaje (id, titulo,contenido, tipo,destinos,origen) values(1, 'victor me cae fatal','pues eso','ordinario',2,2)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen) values(2, 'david me cae fatal','pues eso','ordinario',2,1)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen) values(3, 'lis me cae fatal','pues eso','ordinario',4,1)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen) values(4, 'marcos es un crak','pues eso','ordinario',1,2)
insert into Mensaje (id, titulo,contenido, tipo,destinos,origen) values(5, 'amo a marcos','pues eso','denuncia',2,4)

insert into hito (id, anuncio, id_actividad, completado) values (1, 'pagar alquiler del cohete espacial', '1', 'true')
insert into hito (id, anuncio, id_actividad, completado) values (2, 'estudiar las restricciones bd ', '1', 'false')
insert into hito (id, anuncio, id_actividad, completado) values (3, 'comprar material de mineria', '1',  'true')
insert into hito (id, anuncio, id_actividad, completado) values (4, 'mañana reunion de planificacion de viaje', '1', 'false')
insert into hito(id, anuncio, id_actividad, completado) values (6, 'uuuuu', '1', 'true')
insert into hito(id, anuncio, id_actividad, completado) values (7, 'uuuuu', '3', 'false')
insert into hito(id, anuncio, id_actividad, completado) values (8, 'uuuuu', '2', 'true')
insert into hito(id, anuncio, id_actividad, completado) values (9, 'uuuuu', '4', 'true')

insert into tag (id, nombre) values (1, 'bares')
insert into tag (id, nombre) values (2, 'deportes')
insert into tag (id, nombre) values (3, 'cine')
insert into tag (id, nombre) values (4, 'play')
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


insert into novedad (id, mensaje, tipo) values (1, 'Juan: al final jimmy se viene?', 'Alguien ha comentado la actividad!')
insert into novedad (id, mensaje, tipo) values (2, 'nosequien se unio a cerves', 'Alguien se ha unido a la actividad!')

insert into comentario (id, asunto, sugiero, id_foro, usuario) values (1, 'necesito que alguien me recoja!', false, '1', '4')
insert into comentario (id, asunto, sugiero, id_foro, usuario) values (2, 'yo paso', false,'1', '2')
insert into comentario (id, asunto, sugiero) values (3, 'que preferis que lleve peli o juego?', false)
insert into comentario (id, asunto, sugiero) values (4, 'yo paso', false)
insert into comentario (id, asunto, sugiero) values (5, 'oye os parece bien que vayamos a por unas palomitas?', false)
insert into comentario (id, asunto, sugiero) values (6, 'si', false)
insert into comentario (id, asunto, sugiero) values (7, 'no', false)
insert into comentario (id, asunto, sugiero) values (8, 'me da pereza', false)
insert into comentario (id, asunto, sugiero) values (9, 'a las 9?', false)
insert into comentario (id, asunto, sugiero) values (10, 'vale', false)

insert into encuesta values(1, '3', '1')
insert into encuesta values(2, '4', '1')
insert into encuesta values(3, '5', '1')
insert into encuesta values(4, '9', '1')

insert into respuesta values(1, '2', '1')
insert into respuesta values(2, '4', '1')
insert into respuesta values(3, '6', '4')
insert into respuesta values(4, '7', '4')
insert into respuesta values(5, '8', '4')
insert into respuesta values(6, '10', '4')

insert into pago (id, descripcion, precio_individual, pagado, id_registro) values (1, 'contactar con David para pagar las entradas del concierto', 30, 'true', '1')
insert into pago (id, descripcion, precio_individual, pagado, id_registro) values (2, 'contactar con David para pagar las botellas', 3, 'true', '1')

insert into usuario_amigos(usuario, amigos)values(1,2)
insert into usuario_amigos(usuario, amigos)values(2,1)
insert into usuario_amigos(usuario, amigos)values(1,4)
insert into usuario_amigos(usuario, amigos)values(4,1)

