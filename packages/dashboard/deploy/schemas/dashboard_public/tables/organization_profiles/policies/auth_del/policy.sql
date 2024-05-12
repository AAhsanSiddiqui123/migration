-- Deploy: schemas/dashboard_public/tables/organization_profiles/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".organization_profiles FOR DELETE TO authenticated USING ( organization_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000001000000000000') = '00000000000000000001000000000000') );
COMMIT;
