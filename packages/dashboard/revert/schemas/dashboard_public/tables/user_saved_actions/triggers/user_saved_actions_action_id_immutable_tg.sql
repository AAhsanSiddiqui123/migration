-- Revert: schemas/dashboard_public/tables/user_saved_actions/triggers/user_saved_actions_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER user_saved_actions_action_id_immutable_tg ON "dashboard_public".user_saved_actions;
COMMIT;  

