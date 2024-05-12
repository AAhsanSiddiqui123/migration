-- Revert: schemas/dashboard_public/tables/track_actions/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions DROP COLUMN action_id;
COMMIT;  

