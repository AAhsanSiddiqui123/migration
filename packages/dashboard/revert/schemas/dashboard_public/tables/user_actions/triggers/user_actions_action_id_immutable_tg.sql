-- Revert: schemas/dashboard_public/tables/user_actions/triggers/user_actions_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER user_actions_action_id_immutable_tg ON "dashboard_public".user_actions;
COMMIT;  

