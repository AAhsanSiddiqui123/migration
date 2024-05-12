-- Deploy: schemas/dashboard_public/tables/objects/policies/auth_sel_public/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;
CREATE POLICY auth_sel_public ON "dashboard_public".objects FOR SELECT TO authenticated USING ( is_private IS NOT TRUE );
COMMIT;
