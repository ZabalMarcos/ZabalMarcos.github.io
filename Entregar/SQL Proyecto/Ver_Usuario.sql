
--------------------------------------------------------
-- Archivo creado  - lunes-mayo-12-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure P_DATOS_USUARIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DAW1"."P_DATOS_USUARIOS" 
(
  P_NOMBRE_USUARIO IN VARCHAR2 
) AS 

V_DATOS_USUARIOS_PRO usuarios_pro%ROWTYPE;
V_TIPO_USUARIO char(3);
BEGIN
    
    SELECT * INTO V_DATOS_USUARIOS_PRO
    FROM USUARIOS_PRO 
    WHERE lower(NOMBRE)=lower(P_NOMBRE_USUARIO);
    
    DBMS_OUTPUT.PUT_LINE('ID_USUARIO Nº ' || v_datos_usuarios_pro.IDUSUARIO);
    DBMS_OUTPUT.PUT_LINE('NOMBRE DE USUARIO ' || p_nombre_usuario);
    DBMS_OUTPUT.PUT_LINE('EMAIL ' || v_datos_usuarios_pro.EMAIL);
    IF v_datos_usuarios_pro.ADMINISTRADOR = 0 then
    V_TIPO_USUARIO:= 'NO';
    ELSE
    V_TIPO_USUARIO:= 'YES';
    end if;
    DBMS_OUTPUT.PUT_LINE('ADMINISTRADOR: ' || V_TIPO_USUARIO);
    

END P_DATOS_USUARIOS;

/

