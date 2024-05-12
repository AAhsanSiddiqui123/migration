-- Revert: schemas/dashboard_public/tables/posts/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".posts;
COMMIT;  

