-- Revert: schemas/dashboard_public/tables/track_actions/table from pg

BEGIN;
DROP TABLE "dashboard_public".track_actions;
COMMIT;  

