use RECETARIO_app;

SELECT descripción FROM ensalada;
SELECT * FROM ingrediente;
SELECT * FROM proteina;
SELECT * FROM usuario;
SELECT * FROM vitamina;
SELECT * FROM listaensaladaingrediente;
SELECT * FROM listaensaladaproteina;
SELECT * FROM listaingredientevitamina;
SELECT * FROM listausuarioensalada;

/**** Usuarios que tienen guardada la ensalada capresse ***/
SELECT usuario.nombre FROM usuario LEFT JOIN listausuarioensalada ON listausuarioensalada.UsuarioID = usuario.ID JOIN ensalada ON listausuarioensalada.ensaladaID = ensalada.ID WHERE ensalada.ID = 1;

/*** Cantidad de vitaminas que tiene cada ingrediente***/
SELECT COUNT(listaingredientevitamina.ingredienteID),ingrediente.nombre FROM listaingredientevitamina JOIN ingrediente ON listaingredientevitamina.ingredienteID = ingrediente.ID GROUP BY ingrediente.nombre;
