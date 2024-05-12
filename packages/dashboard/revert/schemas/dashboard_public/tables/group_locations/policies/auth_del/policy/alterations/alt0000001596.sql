-- Revert: schemas/dashboard_public/tables/group_locations/policies/auth_del/policy/alterations/alt0000001596 from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".group_locations;
COMMIT;  

