-- Deploy: schemas/dashboard_limits_public/tables/membership_limits/policies/auth_sel_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limits/table

BEGIN;
CREATE POLICY auth_sel_own ON "dashboard_limits_public".membership_limits FOR SELECT TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
