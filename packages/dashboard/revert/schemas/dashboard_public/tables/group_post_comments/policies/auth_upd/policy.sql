-- Revert: schemas/dashboard_public/tables/group_post_comments/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".group_post_comments;
COMMIT;  

