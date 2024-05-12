-- Revert: schemas/dashboard_public/tables/user_action_verifications/policies/auth_upd_owner/policy from pg

BEGIN;
DROP POLICY auth_upd_owner ON "dashboard_public".user_action_verifications;
COMMIT;  

