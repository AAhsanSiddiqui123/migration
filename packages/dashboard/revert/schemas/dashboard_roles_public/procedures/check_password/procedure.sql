-- Revert: schemas/dashboard_roles_public/procedures/check_password/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".check_password;
COMMIT;  

