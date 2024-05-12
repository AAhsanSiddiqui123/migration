-- Deploy: schemas/dashboard_public/tables/global_languages/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".global_languages FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
