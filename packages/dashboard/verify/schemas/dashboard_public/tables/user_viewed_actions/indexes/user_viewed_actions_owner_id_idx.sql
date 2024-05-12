-- Verify: schemas/dashboard_public/tables/user_viewed_actions/indexes/user_viewed_actions_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_viewed_actions', 'user_viewed_actions_owner_id_idx');
COMMIT;  

