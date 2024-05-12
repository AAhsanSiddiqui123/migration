-- Revert: schemas/dashboard_simple_secrets/procedures/del/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_simple_secrets".del;
COMMIT;  

