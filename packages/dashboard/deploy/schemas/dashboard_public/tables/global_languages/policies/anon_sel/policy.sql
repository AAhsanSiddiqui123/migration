-- Deploy: schemas/dashboard_public/tables/global_languages/policies/anon_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;
CREATE POLICY anon_sel ON "dashboard_public".global_languages FOR SELECT TO anonymous USING ( TRUE );
COMMIT;
