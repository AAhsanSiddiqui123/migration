-- Deploy: schemas/dashboard_public/tables/language_dictionary/policies/anon_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;
CREATE POLICY anon_sel ON "dashboard_public".language_dictionary FOR SELECT TO anonymous USING ( TRUE );
COMMIT;
