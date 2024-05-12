-- Verify: schemas/dashboard_public/tables/user_actions/indexes/user_actions_user_status_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_actions', 'user_actions_user_status_id_idx');
COMMIT;  

