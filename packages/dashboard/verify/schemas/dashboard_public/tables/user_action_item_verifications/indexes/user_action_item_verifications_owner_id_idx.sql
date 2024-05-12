-- Verify: schemas/dashboard_public/tables/user_action_item_verifications/indexes/user_action_item_verifications_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_action_item_verifications', 'user_action_item_verifications_owner_id_idx');
COMMIT;  

