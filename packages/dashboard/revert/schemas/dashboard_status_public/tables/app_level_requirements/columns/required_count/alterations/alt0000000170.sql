-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/columns/required_count/alterations/alt0000000170 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements 
    ALTER COLUMN required_count DROP NOT NULL;


COMMIT;  

