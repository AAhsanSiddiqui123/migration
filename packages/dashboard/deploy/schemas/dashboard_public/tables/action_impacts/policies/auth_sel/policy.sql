-- Deploy: schemas/dashboard_public/tables/action_impacts/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".action_impacts FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
