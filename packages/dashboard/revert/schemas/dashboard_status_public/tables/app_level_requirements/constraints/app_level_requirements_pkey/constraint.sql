-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/constraints/app_level_requirements_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements 
    DROP CONSTRAINT app_level_requirements_pkey;

COMMIT;  

