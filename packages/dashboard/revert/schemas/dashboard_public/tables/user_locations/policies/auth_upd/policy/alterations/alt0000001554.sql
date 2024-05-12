-- Revert: schemas/dashboard_public/tables/user_locations/policies/auth_upd/policy/alterations/alt0000001554 from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".user_locations;
COMMIT;  

