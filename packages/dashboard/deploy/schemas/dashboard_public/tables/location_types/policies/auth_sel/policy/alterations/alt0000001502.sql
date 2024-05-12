-- Deploy: schemas/dashboard_public/tables/location_types/policies/auth_sel/policy/alterations/alt0000001502 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".location_types FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
