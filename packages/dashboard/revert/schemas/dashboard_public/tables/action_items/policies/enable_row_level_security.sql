-- Revert: schemas/dashboard_public/tables/action_items/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

