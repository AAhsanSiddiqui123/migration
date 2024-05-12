-- Deploy: schemas/dashboard_public/tables/user_location_types/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_location_types/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".user_location_types FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
