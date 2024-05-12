-- Revert: schemas/dashboard_public/tables/impacts/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".impacts;
COMMIT;  

