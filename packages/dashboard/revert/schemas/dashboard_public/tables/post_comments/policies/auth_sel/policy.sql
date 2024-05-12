-- Revert: schemas/dashboard_public/tables/post_comments/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".post_comments;
COMMIT;  

