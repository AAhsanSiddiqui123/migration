-- Revert: schemas/dashboard_public/tables/phone_numbers/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".phone_numbers;
COMMIT;  

