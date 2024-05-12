-- Revert: schemas/dashboard_public/tables/track_groups/columns/group_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups DROP COLUMN group_id;
COMMIT;  

