-- Verify: schemas/dashboard_public/tables/action_items/indexes/action_items_start_date_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_items', 'action_items_start_date_idx');
COMMIT;  

