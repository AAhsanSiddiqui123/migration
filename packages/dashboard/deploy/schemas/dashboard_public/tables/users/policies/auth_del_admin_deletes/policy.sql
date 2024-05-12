-- Deploy: schemas/dashboard_public/tables/users/policies/auth_del_admin_deletes/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;
CREATE POLICY auth_del_admin_deletes ON "dashboard_public".users FOR DELETE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000001') = '00000000000000000000000000000001') );
COMMIT;
