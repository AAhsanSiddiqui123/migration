-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/policies/auth_sel_owner/policy from pg

BEGIN;
DROP POLICY auth_sel_owner ON "dashboard_public".user_action_item_verifications;
COMMIT;  

