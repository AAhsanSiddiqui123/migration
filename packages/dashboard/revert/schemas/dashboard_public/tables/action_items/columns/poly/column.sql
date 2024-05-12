-- Revert: schemas/dashboard_public/tables/action_items/columns/poly/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN poly;
COMMIT;  

