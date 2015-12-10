insert into Usuario (id, login, email, rol, password, id_Foto) values(1 ,'marquitos', 'mlaina@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', 101)
insert into Usuario (id, login, email, rol, password, id_Foto) values(2 ,'victor', 'victga04@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', 102)
insert into Usuario (id, login, email, rol, password, id_Foto) values(4 ,'david','david@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', 102)
insert into Usuario (id, login, email, rol, password, id_Foto) values(5 ,'jorge','jorge@ucm.es', 'usuario', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', 101)
insert into Usuario (id, login, email, rol, password, id_Foto) values(6 ,'freire', 'manu@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe', 101)

insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(1, 'cerves', 12, 'Madrid', '1.jpg', 15, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(2, 'zombies',  4,'Madrid', '2.jpg', 4, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(3, 'futbol',9,  'Madrid', '3.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(4, 'xbox',9,  'Madrid', '33.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(5, 'concierto', 12, 'Madrid', '5.jpg', 15, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(6, 'senderismo',  4,'Madrid', '6.jpg', 4, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(7, 'fiesta',9,  'Madrid', '5.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(8, 'visitar la ciudad',9,  'Madrid', '4.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(9, 'viaje a benidorm',9,  'Madrid', '7.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(10, 'cable esquí en el lago',9,  'Madrid', '8.jpg', 20, 'publica')
insert into Actividad (id, nombre, npersonas, localizacion, id_imagen, max_personas, privacidad) values(8, 'paintball',9,  'Madrid', '9.jpg', 20, 'publica')


insert into Mensaje (id, titulo, nDestinos, contenido, tipo) values(1, 'victor me cae fatal',  2, 'pues eso', 'ordinario')
insert into Mensaje (id, titulo, nDestinos, contenido, tipo) values(2, 'david me cae fatal',  2, 'pues eso', 'ordinario')
insert into Mensaje (id, titulo, nDestinos, contenido, tipo) values(3, 'lis me cae fatal',  2, 'pues eso', 'ordinario')
insert into Mensaje (id, titulo, nDestinos, contenido, tipo) values(4, 'marcos es un crak',  8, 'pues eso', 'ordinario')
insert into Mensaje (id, titulo, nDestinos, contenido, tipo) values(5, 'amo a marcos',  8, 'pues eso', 'denuncia')

insert into hito (id, anuncio) values (1, 'pagar alquiler del cohete espacial')
insert into hito (id, anuncio) values (2, 'estudiar las restricciones bd ')
insert into hito (id, anuncio) values (3, 'comprar material de mineria')
insert into hito (id, anuncio) values (4, 'mañana reunion de planificacion de viaje')

insert into tag (id, nombre) values (1, 'bares')
insert into tag (id, nombre) values (2, 'deportes')
insert into tag (id, nombre) values (3, 'cine')

insert into novedad (id, mensaje, tipo) values (1, 'Juan: al final jimmy se viene?', 'Alguien ha comentado la actividad!')

insert into comentario (id, asunto, sugiero) values (1, 'necesito que alguien me recoja!', false)
insert into comentario (id, asunto, sugiero) values (2, 'yo paso', false)

insert into pago (id, descripcion_forma_pago, precio_individual) values (1, 'contactar con David para pagar las entradas del concierto', 30)
