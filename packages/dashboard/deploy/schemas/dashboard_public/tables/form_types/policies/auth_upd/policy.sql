-- Deploy: schemas/dashboard_public/tables/form_types/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".form_types FOR UPDATE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000100000000000000000') = '00000000000000100000000000000000') );
COMMIT;
