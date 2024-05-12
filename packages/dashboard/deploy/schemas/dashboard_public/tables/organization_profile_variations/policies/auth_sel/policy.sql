-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".organization_profile_variations FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
