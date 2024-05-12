-- Revert: schemas/dashboard_public/tables/posts/policies/auth_ins_create_post_check/policy from pg

BEGIN;
DROP POLICY auth_ins_create_post_check ON "dashboard_public".posts;
COMMIT;  

