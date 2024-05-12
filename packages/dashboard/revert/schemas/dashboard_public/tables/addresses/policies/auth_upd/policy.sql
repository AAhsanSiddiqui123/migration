-- Revert: schemas/dashboard_public/tables/addresses/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".addresses;
COMMIT;  

