-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_permissions_public".group_member_permission_defaults FOR INSERT TO authenticated WITH CHECK ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000100000') = '00000000000000000000000000100000') );
COMMIT;
