-- Revert: schemas/dashboard_status_public/tables/app_achievements/columns/id/alterations/alt0000000152 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_achievements 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

