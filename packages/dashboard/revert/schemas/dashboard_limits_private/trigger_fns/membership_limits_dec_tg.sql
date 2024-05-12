-- Revert: schemas/dashboard_limits_private/trigger_fns/membership_limits_dec_tg from pg

BEGIN;


DROP FUNCTION "dashboard_limits_private".membership_limits_dec_tg;
COMMIT;  

