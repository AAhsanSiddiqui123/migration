-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/columns/id/alterations/alt0000000166 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

