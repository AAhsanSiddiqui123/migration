-- Verify: schemas/dashboard_public/tables/action_language_variations/indexes/action_language_variations_action_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_language_variations', 'action_language_variations_action_id_idx');
COMMIT;  

