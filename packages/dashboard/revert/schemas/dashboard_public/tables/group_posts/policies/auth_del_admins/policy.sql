-- Revert: schemas/dashboard_public/tables/group_posts/policies/auth_del_admins/policy from pg

BEGIN;
DROP POLICY auth_del_admins ON "dashboard_public".group_posts;
COMMIT;  

