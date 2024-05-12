-- Verify: schemas/dashboard_public/tables/action_items/triggers/action_items_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_items_action_id_immutable_tg');
COMMIT;  

