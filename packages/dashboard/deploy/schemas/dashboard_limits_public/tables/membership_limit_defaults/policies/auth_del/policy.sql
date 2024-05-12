-- Deploy: schemas/dashboard_limits_public/tables/membership_limit_defaults/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limit_defaults/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_limits_public".membership_limit_defaults FOR DELETE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000001000000') = '00000000000000000000000001000000') );
COMMIT;
