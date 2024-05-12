-- Revert: schemas/dashboard_memberships_private/trigger_fns/memberships_itg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".memberships_itg;
COMMIT;  

