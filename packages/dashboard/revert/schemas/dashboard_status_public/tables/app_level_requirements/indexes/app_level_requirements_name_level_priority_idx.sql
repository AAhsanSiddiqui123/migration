-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/indexes/app_level_requirements_name_level_priority_idx from pg

BEGIN;
DROP INDEX "dashboard_status_public".app_level_requirements_name_level_priority_idx;
COMMIT;  

