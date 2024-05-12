-- Deploy: schemas/dashboard_public/tables/object_records/policies/auth_sel_public/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;
CREATE POLICY auth_sel_public ON "dashboard_public".object_records FOR SELECT TO authenticated USING ( is_private IS NOT TRUE );
COMMIT;
