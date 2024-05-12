-- Revert schemas/dashboard_public/tables/user_action_verifications/policies/auth_sel_user from pg

BEGIN;



DROP POLICY auth_sel_user ON dashboard_public.user_action_verifications;

COMMIT;
