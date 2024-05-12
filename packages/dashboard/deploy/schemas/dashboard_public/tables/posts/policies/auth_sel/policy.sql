-- Deploy: schemas/dashboard_public/tables/posts/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".posts FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
