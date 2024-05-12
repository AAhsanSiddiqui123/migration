-- Revert: schemas/dashboard_public/tables/group_locations/policies/auth_sel/policy/alterations/alt0000001593 from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".group_locations;
COMMIT;  

