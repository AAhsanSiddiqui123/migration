-- Revert: schemas/dashboard_limits_private/procedures/app_limits_dec/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_limits_private".app_limits_dec;
COMMIT;  

