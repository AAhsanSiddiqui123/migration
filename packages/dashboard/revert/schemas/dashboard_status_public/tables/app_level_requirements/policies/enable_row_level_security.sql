-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

