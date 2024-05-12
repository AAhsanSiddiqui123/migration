-- Revert: schemas/dashboard_public/tables/user_action_reactions/triggers/user_action_reactions_user_id_immutable_tg from pg

BEGIN;
DROP TRIGGER user_action_reactions_user_id_immutable_tg ON "dashboard_public".user_action_reactions;
COMMIT;  

