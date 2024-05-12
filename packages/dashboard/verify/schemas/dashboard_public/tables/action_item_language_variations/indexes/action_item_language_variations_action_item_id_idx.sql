-- Verify: schemas/dashboard_public/tables/action_item_language_variations/indexes/action_item_language_variations_action_item_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_item_language_variations', 'action_item_language_variations_action_item_id_idx');
COMMIT;  

