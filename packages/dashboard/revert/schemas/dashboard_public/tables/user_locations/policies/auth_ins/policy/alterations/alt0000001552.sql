-- Revert: schemas/dashboard_public/tables/user_locations/policies/auth_ins/policy/alterations/alt0000001552 from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_locations;
COMMIT;  

