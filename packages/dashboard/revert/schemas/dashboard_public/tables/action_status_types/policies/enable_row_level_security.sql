-- Revert: schemas/dashboard_public/tables/action_status_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

