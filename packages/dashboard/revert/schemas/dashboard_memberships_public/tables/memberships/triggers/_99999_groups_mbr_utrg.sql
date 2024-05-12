-- Revert: schemas/dashboard_memberships_public/tables/memberships/triggers/_99999_groups_mbr_utrg from pg

BEGIN;
DROP TRIGGER _99999_groups_mbr_utrg ON "dashboard_memberships_public".memberships;
COMMIT;  

