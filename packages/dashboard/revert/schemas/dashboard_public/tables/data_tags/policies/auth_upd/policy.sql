-- Revert: schemas/dashboard_public/tables/data_tags/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".data_tags;
COMMIT;  

