-- Revert: schemas/dashboard_status_public/tables/app_achievements/columns/name/alterations/alt0000000156 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_achievements 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

