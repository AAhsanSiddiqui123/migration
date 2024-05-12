-- Verify: schemas/dashboard_public/tables/action_language_variations/triggers/action_language_variations_action_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_language_variations_action_id_immutable_tg');
COMMIT;  

