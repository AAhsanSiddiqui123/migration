-- Revert: schemas/dashboard_public/tables/user_locations/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".user_locations;
COMMIT;  

