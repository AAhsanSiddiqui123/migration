-- Verify: schemas/dashboard_public/tables/user_saved_actions/triggers/user_saved_actions_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.user_saved_actions_action_id_immutable_tg');
COMMIT;  

