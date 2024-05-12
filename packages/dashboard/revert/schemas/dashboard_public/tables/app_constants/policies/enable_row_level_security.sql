-- Revert: schemas/dashboard_public/tables/app_constants/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

