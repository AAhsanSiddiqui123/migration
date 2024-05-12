-- Deploy: schemas/dashboard_public/tables/object_type_attributes/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".object_type_attributes FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
