-- Deploy: schemas/dashboard_public/tables/goal_explanations/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".goal_explanations FOR DELETE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_admin IS TRUE) );
COMMIT;
