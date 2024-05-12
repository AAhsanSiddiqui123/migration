-- Revert: schemas/dashboard_public/tables/groups/triggers/_99999_groups_mbr_trg from pg

BEGIN;
DROP TRIGGER _99999_groups_mbr_trg ON "dashboard_public".groups;
COMMIT;  

