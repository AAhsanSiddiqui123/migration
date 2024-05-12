-- Deploy: schemas/dashboard_public/tables/user_actions/policies/auth_ins_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;
CREATE POLICY auth_ins_own ON "dashboard_public".user_actions FOR INSERT TO authenticated WITH CHECK ( user_id = jwt_public.current_user_id() );
COMMIT;
