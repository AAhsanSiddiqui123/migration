-- Revert: schemas/dashboard_memberships_private/trigger_fns/membership_mbr_create from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".membership_mbr_create;
COMMIT;  

