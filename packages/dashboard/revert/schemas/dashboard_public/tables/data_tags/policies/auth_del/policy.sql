-- Revert: schemas/dashboard_public/tables/data_tags/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".data_tags;
COMMIT;  

