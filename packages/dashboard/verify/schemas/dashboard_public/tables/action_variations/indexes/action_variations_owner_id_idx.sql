-- Verify: schemas/dashboard_public/tables/action_variations/indexes/action_variations_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_variations', 'action_variations_owner_id_idx');
COMMIT;  

