-- Deploy: schemas/dashboard_memberships_public/tables/group_owner_grants/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_owner_grants/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_memberships_public".group_owner_grants FOR INSERT TO authenticated WITH CHECK ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_owner IS TRUE) );
COMMIT;
