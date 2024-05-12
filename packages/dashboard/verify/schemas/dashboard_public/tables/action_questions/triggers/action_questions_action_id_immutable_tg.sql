-- Verify: schemas/dashboard_public/tables/action_questions/triggers/action_questions_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_questions_action_id_immutable_tg');
COMMIT;  

