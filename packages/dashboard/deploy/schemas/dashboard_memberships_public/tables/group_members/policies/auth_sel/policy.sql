-- Deploy: schemas/dashboard_memberships_public/tables/group_members/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_memberships_public".group_members FOR SELECT TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id()) );
COMMIT;
