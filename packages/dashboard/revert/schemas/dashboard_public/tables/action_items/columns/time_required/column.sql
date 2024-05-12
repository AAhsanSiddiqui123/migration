-- Revert: schemas/dashboard_public/tables/action_items/columns/time_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN time_required;
COMMIT;  

