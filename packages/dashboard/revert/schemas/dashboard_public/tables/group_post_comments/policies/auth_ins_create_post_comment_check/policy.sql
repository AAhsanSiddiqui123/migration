-- Revert: schemas/dashboard_public/tables/group_post_comments/policies/auth_ins_create_post_comment_check/policy from pg

BEGIN;
DROP POLICY auth_ins_create_post_comment_check ON "dashboard_public".group_post_comments;
COMMIT;  

