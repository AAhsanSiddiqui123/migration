-- Verify: schemas/dashboard_public/tables/user_action_reactions/triggers/user_action_reactions_user_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.user_action_reactions_user_action_id_immutable_tg');
COMMIT;  

