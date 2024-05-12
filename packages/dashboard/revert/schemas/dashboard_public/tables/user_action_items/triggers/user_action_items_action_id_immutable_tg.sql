-- Revert: schemas/dashboard_public/tables/user_action_items/triggers/user_action_items_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER user_action_items_action_id_immutable_tg ON "dashboard_public".user_action_items;
COMMIT;  

