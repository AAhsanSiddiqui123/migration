-- Revert: schemas/dashboard_simple_secrets/procedures/set/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_simple_secrets".set;
COMMIT;  

