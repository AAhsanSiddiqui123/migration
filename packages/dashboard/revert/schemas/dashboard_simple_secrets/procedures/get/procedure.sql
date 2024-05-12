-- Revert: schemas/dashboard_simple_secrets/procedures/get/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_simple_secrets".get;
COMMIT;  

