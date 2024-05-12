-- Revert: schemas/dashboard_public/tables/addresses/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".addresses;
COMMIT;  

