-- Revert: schemas/dashboard_roles_private/procedures/authenticate_strict/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_roles_private".authenticate_strict;
COMMIT;  

