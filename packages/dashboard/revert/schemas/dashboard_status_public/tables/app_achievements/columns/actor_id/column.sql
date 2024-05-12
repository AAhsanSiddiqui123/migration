-- Revert: schemas/dashboard_status_public/tables/app_achievements/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_achievements DROP COLUMN actor_id;
COMMIT;  

