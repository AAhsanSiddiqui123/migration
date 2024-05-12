-- Deploy: schemas/dashboard_public/tables/user_pass_actions/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".user_pass_actions FOR INSERT TO authenticated WITH CHECK ( user_id = jwt_public.current_user_id() );
COMMIT;
