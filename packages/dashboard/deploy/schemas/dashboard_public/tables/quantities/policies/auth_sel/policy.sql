-- Deploy: schemas/dashboard_public/tables/quantities/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".quantities FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
