-- Verify schemas/dashboard_public/tables/user_action_verifications/alterations/add_foreign_key_verifier_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_action_verifications', 'fk_dashboard_public_user_action_verifications_verifier_id');

ROLLBACK;
