-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".object_type_language_variations FOR UPDATE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000001000000000') = '00000000000000000000001000000000') );
COMMIT;
