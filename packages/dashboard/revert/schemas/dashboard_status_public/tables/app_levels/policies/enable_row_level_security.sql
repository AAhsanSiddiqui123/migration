-- Revert: schemas/dashboard_status_public/tables/app_levels/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_levels
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

