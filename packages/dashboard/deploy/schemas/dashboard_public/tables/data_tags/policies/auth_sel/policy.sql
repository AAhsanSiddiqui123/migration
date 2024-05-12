-- Deploy: schemas/dashboard_public/tables/data_tags/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".data_tags FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
