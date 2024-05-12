-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_status_public".app_level_requirements FOR DELETE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000100000000') = '00000000000000000000000100000000') );
COMMIT;
