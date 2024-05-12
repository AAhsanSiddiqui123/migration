-- Revert: schemas/dashboard_memberships_private/trigger_fns/grants_apply_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".grants_apply_tg;
COMMIT;  

