-- Revert: schemas/dashboard_public/tables/group_locations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".group_locations;
COMMIT;  

