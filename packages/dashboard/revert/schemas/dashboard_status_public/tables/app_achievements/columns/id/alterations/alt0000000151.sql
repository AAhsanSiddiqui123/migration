-- Revert: schemas/dashboard_status_public/tables/app_achievements/columns/id/alterations/alt0000000151 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_achievements 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

