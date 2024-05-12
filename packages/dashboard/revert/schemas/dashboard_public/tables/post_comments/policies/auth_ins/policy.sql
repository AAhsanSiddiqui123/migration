-- Revert: schemas/dashboard_public/tables/post_comments/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".post_comments;
COMMIT;  

