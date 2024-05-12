-- Deploy: schemas/dashboard_public/tables/posts/policies/auth_del_admins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;
CREATE POLICY auth_del_admins ON "dashboard_public".posts AS RESTRICTIVE FOR DELETE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000010000000000000000') = '00000000000000010000000000000000') );
COMMIT;
