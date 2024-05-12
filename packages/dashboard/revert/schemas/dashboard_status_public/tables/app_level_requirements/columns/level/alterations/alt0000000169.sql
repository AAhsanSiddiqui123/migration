-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/columns/level/alterations/alt0000000169 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements 
    ALTER COLUMN level DROP NOT NULL;


COMMIT;  

