-- Revert: schemas/dashboard_roles_public/procedures/forgot_password/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".forgot_password;
COMMIT;  

