-- Revert: schemas/dashboard_encrypted/procedures/verify/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_encrypted".verify;
COMMIT;  

