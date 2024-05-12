-- Revert: schemas/dashboard_public/tables/locations/policies/auth_upd_admin/policy/alterations/alt0000001528 from pg

BEGIN;
DROP POLICY auth_upd_admin ON "dashboard_public".locations;
COMMIT;  

