-- Revert: schemas/dashboard_public/tables/user_pass_actions/triggers/user_pass_actions_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER user_pass_actions_action_id_immutable_tg ON "dashboard_public".user_pass_actions;
COMMIT;  

