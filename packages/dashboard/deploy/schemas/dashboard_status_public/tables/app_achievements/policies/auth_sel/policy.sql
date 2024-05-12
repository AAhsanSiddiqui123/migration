-- Deploy: schemas/dashboard_status_public/tables/app_achievements/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_achievements/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_status_public".app_achievements FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
