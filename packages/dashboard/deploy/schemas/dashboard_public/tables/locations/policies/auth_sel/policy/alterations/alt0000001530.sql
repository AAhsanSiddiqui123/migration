-- Deploy: schemas/dashboard_public/tables/locations/policies/auth_sel/policy/alterations/alt0000001530 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".locations FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
