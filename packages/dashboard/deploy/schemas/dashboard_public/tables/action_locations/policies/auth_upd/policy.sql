-- Deploy: schemas/dashboard_public/tables/action_locations/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".action_locations FOR UPDATE TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000001000000000000000') = '00000000000000001000000000000000') );
COMMIT;
