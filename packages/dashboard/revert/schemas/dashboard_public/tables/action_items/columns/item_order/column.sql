-- Revert: schemas/dashboard_public/tables/action_items/columns/item_order/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN item_order;
COMMIT;  

