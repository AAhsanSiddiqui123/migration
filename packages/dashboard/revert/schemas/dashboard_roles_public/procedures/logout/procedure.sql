-- Revert: schemas/dashboard_roles_public/procedures/logout/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_public".logout;

COMMIT;  

