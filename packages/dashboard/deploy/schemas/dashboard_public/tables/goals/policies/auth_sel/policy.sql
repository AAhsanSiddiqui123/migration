-- Deploy: schemas/dashboard_public/tables/goals/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".goals FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
