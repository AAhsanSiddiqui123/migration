-- Deploy: schemas/dashboard_memberships_public/tables/group_membership_defaults/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_membership_defaults/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_memberships_public".group_membership_defaults FOR UPDATE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000001000000000') = '00000000000000000000001000000000') );
COMMIT;
