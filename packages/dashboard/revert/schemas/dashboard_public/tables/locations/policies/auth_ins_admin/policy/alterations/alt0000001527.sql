-- Revert: schemas/dashboard_public/tables/locations/policies/auth_ins_admin/policy/alterations/alt0000001527 from pg

BEGIN;
DROP POLICY auth_ins_admin ON "dashboard_public".locations;
COMMIT;  

