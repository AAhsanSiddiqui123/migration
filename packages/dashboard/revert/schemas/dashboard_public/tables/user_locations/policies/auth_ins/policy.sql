-- Revert: schemas/dashboard_public/tables/user_locations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_locations;
COMMIT;  

