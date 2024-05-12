-- Deploy: schemas/dashboard_public/tables/users/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".users FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
