-- Verify: schemas/dashboard_public/tables/user_action_items/triggers/user_action_items_action_item_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.user_action_items_action_item_id_immutable_tg');
COMMIT;  

