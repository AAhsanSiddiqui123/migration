-- Revert: schemas/dashboard_public/tables/track_locations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".track_locations;
COMMIT;  

