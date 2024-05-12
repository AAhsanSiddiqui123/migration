-- Deploy: schemas/dashboard_public/tables/groups/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".groups FOR DELETE TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_owner IS TRUE) );
COMMIT;
