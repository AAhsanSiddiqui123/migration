-- Revert: schemas/dashboard_public/tables/track_locations/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".track_locations;
COMMIT;  

