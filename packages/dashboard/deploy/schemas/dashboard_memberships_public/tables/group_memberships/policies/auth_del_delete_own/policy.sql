-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/policies/auth_del_delete_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table

BEGIN;
CREATE POLICY auth_del_delete_own ON "dashboard_memberships_public".group_memberships FOR DELETE TO authenticated USING ( actor_id = jwt_public.current_user_id() AND is_banned IS FALSE );
COMMIT;
