-- Revert: schemas/dashboard_public/tables/posts/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".posts;
COMMIT;  

