-- Deploy: schemas/dashboard_public/tables/group_locations/policies/auth_upd/policy/alterations/alt0000001595 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".group_locations FOR UPDATE TO authenticated USING ( group_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000010000000') = '00000000000000000000000010000000') );
COMMIT;
