-- Revert: schemas/dashboard_memberships_private/trigger_fns/memberships_utg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".memberships_utg;
COMMIT;  

