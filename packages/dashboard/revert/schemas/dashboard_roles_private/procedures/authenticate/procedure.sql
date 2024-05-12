-- Revert: schemas/dashboard_roles_private/procedures/authenticate/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_private".authenticate;
COMMIT;  

