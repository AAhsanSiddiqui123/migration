-- Deploy: schemas/dashboard_public/tables/zip_codes/policies/anon_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;
CREATE POLICY anon_sel ON "dashboard_public".zip_codes FOR SELECT TO anonymous USING ( TRUE );
COMMIT;
