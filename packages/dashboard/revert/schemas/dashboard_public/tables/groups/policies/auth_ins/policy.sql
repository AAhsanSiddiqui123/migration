-- Revert: schemas/dashboard_public/tables/groups/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".groups;
COMMIT;  

