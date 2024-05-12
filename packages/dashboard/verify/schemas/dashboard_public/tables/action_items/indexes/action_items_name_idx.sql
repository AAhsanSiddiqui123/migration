-- Verify: schemas/dashboard_public/tables/action_items/indexes/action_items_name_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_items', 'action_items_name_idx');
COMMIT;  

