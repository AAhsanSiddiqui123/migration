-- Revert: schemas/dashboard_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000000155 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_achievements 
    ALTER COLUMN actor_id DROP DEFAULT;

COMMIT;  

