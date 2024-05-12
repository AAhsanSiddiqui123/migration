-- Deploy: schemas/dashboard_memberships_public/tables/app_owner_grants/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_memberships_public".app_owner_grants FOR INSERT TO authenticated WITH CHECK ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_owner IS TRUE) );
COMMIT;
