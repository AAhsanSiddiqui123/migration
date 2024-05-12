-- Deploy: schemas/dashboard_public/tables/forms/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".forms FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
