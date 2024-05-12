-- Revert: schemas/dashboard_encrypted/procedures/get/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_encrypted".get;
COMMIT;  

