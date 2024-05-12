-- Revert: schemas/dashboard_public/tables/track_groups/constraints/track_groups_group_id_fkey/alterations/alt0000001632 from pg

BEGIN;
COMMENT ON CONSTRAINT track_groups_group_id_fkey ON "dashboard_public".track_groups IS NULL;
COMMIT;  

