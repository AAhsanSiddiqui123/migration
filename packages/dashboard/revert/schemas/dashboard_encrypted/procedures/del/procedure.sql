-- Revert: schemas/dashboard_encrypted/procedures/del/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_encrypted".del;
COMMIT;  

