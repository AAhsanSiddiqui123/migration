-- Deploy: schemas/dashboard_public/tables/units/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".units FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
