-- Revert: schemas/dashboard_public/tables/user_locations/policies/auth_sel/policy/alterations/alt0000001553 from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".user_locations;
COMMIT;  

