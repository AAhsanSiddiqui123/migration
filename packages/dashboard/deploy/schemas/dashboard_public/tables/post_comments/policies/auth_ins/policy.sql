-- Deploy: schemas/dashboard_public/tables/post_comments/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".post_comments FOR INSERT TO authenticated WITH CHECK ( commenter_id = jwt_public.current_user_id() );
COMMIT;
