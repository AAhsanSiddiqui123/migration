-- Revert: schemas/dashboard_public/tables/action_items/columns/item_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN item_type_id;
COMMIT;  

