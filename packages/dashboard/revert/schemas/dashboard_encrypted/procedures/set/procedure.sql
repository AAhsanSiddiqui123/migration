-- Revert: schemas/dashboard_encrypted/procedures/set/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_encrypted".set;
COMMIT;  

