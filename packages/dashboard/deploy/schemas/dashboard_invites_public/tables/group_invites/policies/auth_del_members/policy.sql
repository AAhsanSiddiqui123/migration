-- Deploy: schemas/dashboard_invites_public/tables/group_invites/policies/auth_del_members/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table

BEGIN;
CREATE POLICY auth_del_members ON "dashboard_invites_public".group_invites FOR DELETE TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_admin IS TRUE) );
COMMIT;
