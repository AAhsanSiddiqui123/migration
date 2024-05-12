-- Revert: schemas/dashboard_public/tables/reward_payments/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".reward_payments;
COMMIT;  

