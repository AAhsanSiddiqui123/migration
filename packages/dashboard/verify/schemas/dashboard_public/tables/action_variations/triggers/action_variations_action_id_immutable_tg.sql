-- Verify: schemas/dashboard_public/tables/action_variations/triggers/action_variations_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_variations_action_id_immutable_tg');
COMMIT;  

