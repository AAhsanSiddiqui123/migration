-- Deploy: schemas/dashboard_public/tables/organization_profiles/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".organization_profiles FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
