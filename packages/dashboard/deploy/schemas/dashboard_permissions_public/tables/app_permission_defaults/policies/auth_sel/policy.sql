-- Deploy: schemas/dashboard_permissions_public/tables/app_permission_defaults/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permission_defaults/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_permissions_public".app_permission_defaults FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
