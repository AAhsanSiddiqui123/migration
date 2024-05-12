-- Revert: schemas/dashboard_public/tables/post_comments/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".post_comments;
COMMIT;  

