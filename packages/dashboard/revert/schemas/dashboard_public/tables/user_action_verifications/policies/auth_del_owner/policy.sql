-- Revert: schemas/dashboard_public/tables/user_action_verifications/policies/auth_del_owner/policy from pg

BEGIN;
DROP POLICY auth_del_owner ON "dashboard_public".user_action_verifications;
COMMIT;  

