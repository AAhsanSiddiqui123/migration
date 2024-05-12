-- Revert: schemas/dashboard_public/tables/group_locations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".group_locations;
COMMIT;  

