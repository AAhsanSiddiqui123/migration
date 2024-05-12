-- Revert: schemas/dashboard_public/tables/track_groups/table from pg

BEGIN;
DROP TABLE "dashboard_public".track_groups;
COMMIT;  

