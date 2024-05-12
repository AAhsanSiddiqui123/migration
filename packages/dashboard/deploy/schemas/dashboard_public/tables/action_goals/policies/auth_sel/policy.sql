-- Deploy: schemas/dashboard_public/tables/action_goals/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".action_goals FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
