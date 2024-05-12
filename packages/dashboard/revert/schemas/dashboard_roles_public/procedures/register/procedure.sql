-- Revert: schemas/dashboard_roles_public/procedures/register/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".register;

COMMIT;  

