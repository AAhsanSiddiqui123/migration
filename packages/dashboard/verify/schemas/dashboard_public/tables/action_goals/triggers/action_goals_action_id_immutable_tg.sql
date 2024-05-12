-- Verify: schemas/dashboard_public/tables/action_goals/triggers/action_goals_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_goals_action_id_immutable_tg');
COMMIT;  

