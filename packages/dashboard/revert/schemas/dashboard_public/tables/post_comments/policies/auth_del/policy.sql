-- Revert: schemas/dashboard_public/tables/post_comments/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".post_comments;
COMMIT;  
