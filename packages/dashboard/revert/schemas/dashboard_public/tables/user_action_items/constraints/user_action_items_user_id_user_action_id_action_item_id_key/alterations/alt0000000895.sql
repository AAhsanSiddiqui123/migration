-- Revert: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_id_user_action_id_action_item_id_key/alterations/alt0000000895 from pg

BEGIN;
COMMENT ON CONSTRAINT user_action_items_user_id_user_action_id_action_item_id_key ON "dashboard_public".user_action_items IS NULL;
COMMIT;  

