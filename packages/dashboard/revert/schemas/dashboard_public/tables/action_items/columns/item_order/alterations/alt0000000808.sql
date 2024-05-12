-- Revert: schemas/dashboard_public/tables/action_items/columns/item_order/alterations/alt0000000808 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN item_order DROP DEFAULT;

COMMIT;  

