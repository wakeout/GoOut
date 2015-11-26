insert into Usuario (id, login, mail, rol, password) values(1 ,'marquitos', 'mlaina@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, mail, rol, password) values(2 ,'victor', 'victga04@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, mail, rol, password) values(4 ,'david','david@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, mail, rol, password) values(5 ,'jorge','jorge@ucm.es', 'usuario', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')
insert into Usuario (id, login, mail, rol, password) values(1 ,'freire', 'manu@ucm.es', 'admin', '$2a$10$tBT2yNGyOp0bqMCN7kaYO.D0uXUJF7EmdrXaTb26vPId7KcQOBUIe')

insert into Actividad (id, nombre, npersonas, latitud, longitud, id_imagen, max_personas) values(1, 'cerves', 12, 1234, 1244, 1, 15)
insert into Actividad (id, nombre, npersonas, latitud, longitud  ,id_imagen, max_personas) values(2, 'zombies',  4,1200, 1214, 2, 4)
insert into Actividad (id, nombre, npersonas, latitud, longitud, id_imagen, max_personas) values(3, 'cine estreno starwars',9,  1000, 1000, 3, 20)

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

insert into foro (id) values (1)
insert into foro (id) values (2)
insert into foro (id) values (3)

insert into novedad (id, mensaje, tipo) values (1, 'Juan: al final jimmy se viene?', 'Alguien ha comentado la actividad!')

insert into comentario (id, asunto, sugiero) values (1, 'necesito que alguien me recoja!', false)
insert into comentario (id, asunto, sugiero) values (2, 'yo paso', false)

insert into pago (id, descripcion_forma_pago, precio_individual) values (1, 'contactar con David para pagar las entradas del concierto', 30)
