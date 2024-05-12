-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/columns/level/column from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements DROP COLUMN level;
COMMIT;  

