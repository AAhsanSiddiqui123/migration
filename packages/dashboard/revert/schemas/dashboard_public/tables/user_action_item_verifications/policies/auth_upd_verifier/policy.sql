-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/policies/auth_upd_verifier/policy from pg

BEGIN;
DROP POLICY auth_upd_verifier ON "dashboard_public".user_action_item_verifications;
COMMIT;  

