-- Verify: schemas/dashboard_public/tables/user_action_verifications/indexes/user_action_verifications_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_action_verifications', 'user_action_verifications_owner_id_idx');
COMMIT;  

