-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000000172 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements 
    ALTER COLUMN priority DROP NOT NULL;


COMMIT;  

