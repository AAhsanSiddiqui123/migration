-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_permissions_public".app_permissions FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
