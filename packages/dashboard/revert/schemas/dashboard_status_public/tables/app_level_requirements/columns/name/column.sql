-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements DROP COLUMN name;
COMMIT;  

