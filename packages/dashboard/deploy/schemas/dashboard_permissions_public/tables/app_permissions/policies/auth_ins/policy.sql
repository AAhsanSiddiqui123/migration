-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_permissions_public".app_permissions FOR INSERT TO authenticated WITH CHECK ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000010000000') = '00000000000000000000000010000000') );
COMMIT;
