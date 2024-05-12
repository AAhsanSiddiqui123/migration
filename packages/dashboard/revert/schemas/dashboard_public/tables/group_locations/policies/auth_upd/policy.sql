-- Revert: schemas/dashboard_public/tables/group_locations/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".group_locations;
COMMIT;  

