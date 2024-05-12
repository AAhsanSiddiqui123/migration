-- Revert: schemas/dashboard_public/tables/user_viewed_actions/triggers/user_viewed_actions_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER user_viewed_actions_action_id_immutable_tg ON "dashboard_public".user_viewed_actions;
COMMIT;  

