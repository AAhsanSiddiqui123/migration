-- Revert: schemas/dashboard_public/tables/track_groups/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups DROP COLUMN id;
COMMIT;  

