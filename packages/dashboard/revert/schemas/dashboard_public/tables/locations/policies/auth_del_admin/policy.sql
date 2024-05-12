-- Revert: schemas/dashboard_public/tables/locations/policies/auth_del_admin/policy from pg

BEGIN;
DROP POLICY auth_del_admin ON "dashboard_public".locations;
COMMIT;  

