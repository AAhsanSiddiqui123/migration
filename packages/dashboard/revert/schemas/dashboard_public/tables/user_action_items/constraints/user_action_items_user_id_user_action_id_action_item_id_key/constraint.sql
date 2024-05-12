-- Revert: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_id_user_action_id_action_item_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    DROP CONSTRAINT user_action_items_user_id_user_action_id_action_item_id_key;

COMMIT;  

