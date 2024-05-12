-- Deploy: schemas/dashboard_public/tables/app_constants/policies/anon_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;
CREATE POLICY anon_sel ON "dashboard_public".app_constants FOR SELECT TO anonymous USING ( TRUE );
COMMIT;
