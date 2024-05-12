-- Deploy: schemas/dashboard_public/tables/tags/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".tags FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
