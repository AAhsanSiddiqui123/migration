-- Verify: schemas/dashboard_public/tables/groups/triggers/_99999_groups_mbr_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_public._99999_groups_mbr_trg');
COMMIT;  

