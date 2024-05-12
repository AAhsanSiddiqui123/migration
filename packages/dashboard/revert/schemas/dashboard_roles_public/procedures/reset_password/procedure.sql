-- Revert: schemas/dashboard_roles_public/procedures/reset_password/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".reset_password;

COMMIT;  

