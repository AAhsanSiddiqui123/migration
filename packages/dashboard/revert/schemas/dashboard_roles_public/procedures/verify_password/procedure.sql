-- Revert: schemas/dashboard_roles_public/procedures/verify_password/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".verify_password;
COMMIT;  

