-- Deploy: schemas/dashboard_public/tables/user_action_reactions/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".user_action_reactions FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
