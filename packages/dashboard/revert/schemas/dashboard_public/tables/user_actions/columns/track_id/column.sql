-- Revert: schemas/dashboard_public/tables/user_actions/columns/track_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN track_id;
COMMIT;  

