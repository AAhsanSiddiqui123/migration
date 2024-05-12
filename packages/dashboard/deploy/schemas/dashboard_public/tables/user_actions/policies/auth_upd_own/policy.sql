-- Deploy: schemas/dashboard_public/tables/user_actions/policies/auth_upd_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;
CREATE POLICY auth_upd_own ON "dashboard_public".user_actions FOR UPDATE TO authenticated USING ( user_id = jwt_public.current_user_id() );
COMMIT;
