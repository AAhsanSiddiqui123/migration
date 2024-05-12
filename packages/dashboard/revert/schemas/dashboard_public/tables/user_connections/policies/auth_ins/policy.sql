-- Revert: schemas/dashboard_public/tables/user_connections/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".user_connections;
COMMIT;  

