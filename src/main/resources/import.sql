insert into Usuario (id, login, email, rol, password, id_Foto) values(1 ,'marquitos', 'mlaina@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', '101.jpg')
insert into Usuario (id, login, email, rol, password, id_Foto) values(2 ,'victor', 'victga04@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', '102.jpg')
insert into Usuario (id, login, email, rol, password, id_Foto) values(4 ,'david','david@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', '102.jpg')
insert into Usuario (id, login, email, rol, password, id_Foto) values(5 ,'jorge','jorge@ucm.es', 'usuario', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', '101.jpg')
insert into Usuario (id, login, email, rol, password, id_Foto) values(6 ,'freire', 'manu@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', '4.png')

insert into foro values(1)
insert into foro values(2)
insert into foro values(3)
insert into foro values(4)

insert into comentario values(3, 'hola',  false, '1', '1')
insert into comentario values(4, 'eeey',  false, '2', '1')
insert into comentario values(5, 'que hay',  false, '3', '1')
insert into comentario values(6, 'hola',  false, '1', '2')



insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad, creador,foro) values(1, 'cerves', 12, 'Madrid', '1.jpg', 15, 'privada', 1, '1')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad, creador,foro) values(2, 'zombies',  4,'Madrid', '2.jpg', 4, 'publica', 1, '2')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad, creador,foro) values(3, 'futbol',9,  'Madrid', '3.jpg', 20, 'privada', 1, '3')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(4, 'xbox',9,  'Madrid', '33.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(5, 'concierto', 12, 'Madrid', '5.jpg', 15, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(6, 'senderismo',  4,'Madrid', '6.jpg', 4, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(7, 'fiesta',9,  'Madrid', '5.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(8, 'visitar la ciudad',9,  'Madrid', '4.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(9, 'viaje a benidorm',9,  'Madrid', '7.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(10, 'cable esquí en el lago',9,  'Madrid', '8.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(8, 'paintball',9,  'Madrid', '9.jpg', 20, 'publica')




insert into Registro values(1,1,1,1,1);
insert into Registro values(2,2,1,2,1);
insert into Registro values(3,1,3,1,3);
insert into Registro values(4,4,1,4,1);
insert into Registro values(5,5,2,5,2);

insert into Registro values(6,8,1,8,1);
insert into Registro values(7,8,2,8,2);
insert into Registro values(8,8,4,8,4);
insert into Registro values(9,8,5,8,5);
insert into Registro values(10,8,6,8,6);




insert into Mensaje (id, titulo,ndestinos,contenido, tipo,destinos,origen) values(1, 'victor me cae fatal',1, 'pues eso','ordinario',2,2)
insert into Mensaje (id, titulo,ndestinos,contenido, tipo,destinos,origen) values(2, 'david me cae fatal',1, 'pues eso','ordinario',2,1)
insert into Mensaje (id, titulo,ndestinos,contenido, tipo,destinos,origen) values(3, 'lis me cae fatal',1, 'pues eso','ordinario',4,1)
insert into Mensaje (id, titulo,ndestinos,contenido, tipo,destinos,origen) values(4, 'marcos es un crak',1, 'pues eso','ordinario',1,2)
insert into Mensaje (id, titulo,ndestinos,contenido, tipo,destinos,origen) values(5, 'amo a marcos',1, 'pues eso','denuncia',2,4)

insert into hito (id, anuncio, id_actividad) values (1, 'pagar alquiler del cohete espacial', '1')
insert into hito (id, anuncio, id_actividad) values (2, 'estudiar las restricciones bd ', '1')
insert into hito (id, anuncio, id_actividad) values (3, 'comprar material de mineria', '1')
insert into hito (id, anuncio, id_actividad) values (4, 'mañana reunion de planificacion de viaje', '1')
insert into hito(id, anuncio, id_actividad) values (6, 'uuuuu', '1')

insert into tag (id, nombre) values (1, 'bares')
insert into tag (id, nombre) values (2, 'deportes')
insert into tag (id, nombre) values (3, 'cine')

insert into novedad (id, mensaje, tipo) values (1, 'Juan: al final jimmy se viene?', 'Alguien ha comentado la actividad!')

insert into comentario (id, asunto, sugiero) values (1, 'necesito que alguien me recoja!', false)
insert into comentario (id, asunto, sugiero) values (2, 'yo paso', false)

insert into pago (id, descripcion_forma_pago, precio_individual) values (1, 'contactar con David para pagar las entradas del concierto', 30)


insert into usuario_amigos(usuario, amigos)values(1,2)
insert into usuario_amigos(usuario, amigos)values(2,1)
insert into usuario_amigos(usuario, amigos)values(1,4)
insert into usuario_amigos(usuario, amigos)values(4,1)
