-- Revert: schemas/dashboard_public/tables/track_actions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions DROP COLUMN id;
COMMIT;  

