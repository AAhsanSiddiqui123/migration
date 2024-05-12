-- Deploy: schemas/dashboard_public/tables/zip_codes/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".zip_codes FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
