-- Verify: schemas/dashboard_public/tables/user_pass_actions/indexes/user_pass_actions_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_pass_actions', 'user_pass_actions_owner_id_idx');
COMMIT;  

