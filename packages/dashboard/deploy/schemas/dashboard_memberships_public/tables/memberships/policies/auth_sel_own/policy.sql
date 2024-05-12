-- Deploy: schemas/dashboard_memberships_public/tables/memberships/policies/auth_sel_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;
CREATE POLICY auth_sel_own ON "dashboard_memberships_public".memberships FOR SELECT TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
