-- Revert dashboard:schemas/dashboard_public/tables/groups/policies/auth_upd/policy_v2 from pg

BEGIN;

DROP POLICY IF EXISTS auth_upd ON "dashboard_public".groups;

CREATE POLICY auth_upd ON "dashboard_public".groups FOR UPDATE TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000001000000000') = '00000000000000000000001000000000') );

COMMIT;
