-- Revert: schemas/dashboard_public/tables/action_items/columns/bounds/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN bounds;
COMMIT;  

