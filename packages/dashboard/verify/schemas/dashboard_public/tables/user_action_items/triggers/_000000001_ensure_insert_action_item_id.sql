-- Verify: schemas/dashboard_public/tables/user_action_items/triggers/_000000001_ensure_insert_action_item_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000001_ensure_insert_action_item_id');
COMMIT;  

