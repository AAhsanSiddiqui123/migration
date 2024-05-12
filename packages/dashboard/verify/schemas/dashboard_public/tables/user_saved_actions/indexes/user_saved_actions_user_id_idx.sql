-- Verify: schemas/dashboard_public/tables/user_saved_actions/indexes/user_saved_actions_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_saved_actions', 'user_saved_actions_user_id_idx');
COMMIT;  

