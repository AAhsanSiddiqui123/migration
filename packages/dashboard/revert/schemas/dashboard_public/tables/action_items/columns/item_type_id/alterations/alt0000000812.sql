-- Revert: schemas/dashboard_public/tables/action_items/columns/item_type_id/alterations/alt0000000812 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN item_type_id DROP NOT NULL;


COMMIT;  

