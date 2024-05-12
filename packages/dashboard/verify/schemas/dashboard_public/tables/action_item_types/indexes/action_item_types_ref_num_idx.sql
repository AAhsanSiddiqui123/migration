-- Verify: schemas/dashboard_public/tables/action_item_types/indexes/action_item_types_ref_num_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_item_types', 'action_item_types_ref_num_idx');
COMMIT;  

