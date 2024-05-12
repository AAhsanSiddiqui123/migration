-- Deploy: schemas/dashboard_public/tables/action_locations/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".action_locations FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
