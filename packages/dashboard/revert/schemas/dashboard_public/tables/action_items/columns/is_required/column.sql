-- Revert: schemas/dashboard_public/tables/action_items/columns/is_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN is_required;
COMMIT;  

