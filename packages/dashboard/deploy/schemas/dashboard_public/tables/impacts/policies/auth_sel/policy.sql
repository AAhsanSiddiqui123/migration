-- Deploy: schemas/dashboard_public/tables/impacts/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".impacts FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
