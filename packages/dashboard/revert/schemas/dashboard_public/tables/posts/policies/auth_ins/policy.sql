-- Revert: schemas/dashboard_public/tables/posts/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".posts;
COMMIT;  

