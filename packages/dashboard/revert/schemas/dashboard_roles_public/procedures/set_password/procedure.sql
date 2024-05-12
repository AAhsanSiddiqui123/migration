-- Revert: schemas/dashboard_roles_public/procedures/set_password/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".set_password;
COMMIT;  

