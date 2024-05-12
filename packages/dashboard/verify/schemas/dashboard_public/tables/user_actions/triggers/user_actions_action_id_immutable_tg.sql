-- Verify: schemas/dashboard_public/tables/user_actions/triggers/user_actions_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.user_actions_action_id_immutable_tg');
COMMIT;  

