-- Deploy: schemas/dashboard_public/tables/addresses/policies/auth_sel_admin/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;
CREATE POLICY auth_sel_admin ON "dashboard_public".addresses FOR SELECT TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000010000000000') = '00000000000000000000010000000000') );
COMMIT;
