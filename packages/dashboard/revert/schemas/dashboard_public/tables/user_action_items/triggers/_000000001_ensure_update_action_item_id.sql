-- Revert: schemas/dashboard_public/tables/user_action_items/triggers/_000000001_ensure_update_action_item_id from pg

BEGIN;
DROP TRIGGER _000000001_ensure_update_action_item_id ON "dashboard_public".user_action_items;
COMMIT;  

