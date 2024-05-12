-- Revert: schemas/dashboard_public/tables/action_item_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types DROP COLUMN name;
COMMIT;  

