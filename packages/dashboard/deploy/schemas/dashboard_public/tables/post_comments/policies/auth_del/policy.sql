-- Deploy: schemas/dashboard_public/tables/post_comments/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".post_comments FOR DELETE TO authenticated USING ( commenter_id = jwt_public.current_user_id() );
COMMIT;
