-- Deploy: schemas/dashboard_memberships_public/tables/admin_grants/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_memberships_public".admin_grants FOR INSERT TO authenticated WITH CHECK ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_admin IS TRUE) );
COMMIT;
