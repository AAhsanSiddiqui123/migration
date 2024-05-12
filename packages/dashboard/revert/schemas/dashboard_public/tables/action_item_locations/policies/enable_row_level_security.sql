-- Revert: schemas/dashboard_public/tables/action_item_locations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

