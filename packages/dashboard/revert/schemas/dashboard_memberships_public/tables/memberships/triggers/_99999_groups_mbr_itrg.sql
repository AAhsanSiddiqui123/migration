-- Revert: schemas/dashboard_memberships_public/tables/memberships/triggers/_99999_groups_mbr_itrg from pg

BEGIN;
DROP TRIGGER _99999_groups_mbr_itrg ON "dashboard_memberships_public".memberships;
COMMIT;  

