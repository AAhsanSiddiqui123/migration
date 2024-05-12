-- Revert: schemas/dashboard_public/tables/data_tags/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".data_tags;
COMMIT;  

