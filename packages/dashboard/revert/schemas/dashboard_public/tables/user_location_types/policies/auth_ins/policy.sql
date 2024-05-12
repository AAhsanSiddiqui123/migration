-- Revert: schemas/dashboard_public/tables/user_location_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_location_types;
COMMIT;  

