-- Revert: schemas/dashboard_public/tables/group_post_comments/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".group_post_comments;
COMMIT;  

