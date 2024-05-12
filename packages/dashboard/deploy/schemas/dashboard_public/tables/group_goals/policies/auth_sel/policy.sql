-- Deploy: schemas/dashboard_public/tables/group_goals/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".group_goals FOR SELECT TO authenticated USING ( group_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id()) );
COMMIT;
