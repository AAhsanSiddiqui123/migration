-- Deploy: schemas/dashboard_public/tables/action_goals/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".action_goals FOR DELETE TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000001000000000000000') = '00000000000000001000000000000000') );
COMMIT;
