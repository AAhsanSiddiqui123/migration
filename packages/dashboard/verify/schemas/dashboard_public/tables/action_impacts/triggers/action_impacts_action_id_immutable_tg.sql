-- Verify: schemas/dashboard_public/tables/action_impacts/triggers/action_impacts_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_impacts_action_id_immutable_tg');
COMMIT;  

