-- Revert: schemas/dashboard_public/tables/action_variations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

