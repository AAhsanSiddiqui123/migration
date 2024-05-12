-- Revert: schemas/dashboard_roles_public/procedures/login/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".login;
COMMIT;  

