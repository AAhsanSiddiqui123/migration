-- Revert: schemas/dashboard_limits_private/procedures/membership_limits_dec/procedure from pg

BEGIN;


DROP FUNCTION "dashboard_limits_private".membership_limits_dec;
COMMIT;  

