-- Revert: schemas/dashboard_public/tables/users/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".users;
COMMIT;  

