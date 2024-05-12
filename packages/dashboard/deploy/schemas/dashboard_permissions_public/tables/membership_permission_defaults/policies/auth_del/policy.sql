-- Deploy: schemas/dashboard_permissions_public/tables/membership_permission_defaults/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permission_defaults/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_permissions_public".membership_permission_defaults FOR DELETE TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000010000000') = '00000000000000000000000010000000') );
COMMIT;
