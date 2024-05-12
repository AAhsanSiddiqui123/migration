-- Deploy: schemas/dashboard_public/tables/user_action_reactions/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".user_action_reactions FOR INSERT TO authenticated WITH CHECK ( reacter_id = jwt_public.current_user_id() );
COMMIT;
