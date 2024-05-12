-- Revert: schemas/dashboard_public/tables/group_posts/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".group_posts;
COMMIT;  

