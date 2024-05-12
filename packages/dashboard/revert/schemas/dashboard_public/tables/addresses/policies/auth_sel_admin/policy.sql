-- Revert: schemas/dashboard_public/tables/addresses/policies/auth_sel_admin/policy from pg

BEGIN;
DROP POLICY auth_sel_admin ON "dashboard_public".addresses;
COMMIT;  

