-- Revert: schemas/dashboard_public/tables/group_posts/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".group_posts;
COMMIT;  

