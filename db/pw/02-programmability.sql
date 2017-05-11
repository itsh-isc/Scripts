DELIMITER //
CREATE FUNCTION pruebas.validar_credenciales( 
	p_nombre VARCHAR(100),
    p_password VARCHAR(20)
) RETURNS INT(11)
BEGIN
	DECLARE result INT(11);

	SELECT 	id_usuario
    INTO	result
    FROM 	pruebas.usuario
    WHERE	nombre = p_nombre
		AND	password = p_password;
		
	IF result IS NULL THEN
		SET result = 0;
	END IF;
        
	RETURN result;        
END
// DELIMITER ;

-- SELECT pruebas.validar_credenciales('usuario', 'secreto');




DELIMITER //
CREATE PROCEDURE pruebas.qry_perfil( 
	p_id_usuario INT(11)
) 
BEGIN

	SELECT 	id_perfil_usuario, id_usuario, nombre,
			apellido_p, apellido_m, sexo,
            mayor_de_edad
    FROM 	pruebas.perfil_usuario
    WHERE	id_usuario = p_id_usuario;
    
END
// DELIMITER ;

-- CALL pruebas.qry_perfil(1);