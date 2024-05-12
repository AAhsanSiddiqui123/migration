-- Revert: schemas/dashboard_public/tables/track_actions/columns/track_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions DROP COLUMN track_id;
COMMIT;  

