-- Revert: schemas/dashboard_status_public/tables/app_steps/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_steps
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

