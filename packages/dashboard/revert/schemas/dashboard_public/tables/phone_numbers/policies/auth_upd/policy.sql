-- Revert: schemas/dashboard_public/tables/phone_numbers/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".phone_numbers;
COMMIT;  

