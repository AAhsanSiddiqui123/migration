-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/alterations/alt0000000167 from pg

BEGIN;
COMMENT ON TABLE "dashboard_status_public".app_level_requirements IS NULL;
COMMIT;  

