-- Verify: schemas/dashboard_public/tables/user_action_items/indexes/user_action_items_verified_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_action_items', 'user_action_items_verified_idx');
COMMIT;  

