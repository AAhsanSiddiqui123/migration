-- Revert: schemas/dashboard_public/tables/action_items/constraints/action_items_item_type_id_fkey/alterations/alt0000000813 from pg

BEGIN;
COMMENT ON CONSTRAINT action_items_item_type_id_fkey ON "dashboard_public".action_items IS NULL;
COMMIT;  

