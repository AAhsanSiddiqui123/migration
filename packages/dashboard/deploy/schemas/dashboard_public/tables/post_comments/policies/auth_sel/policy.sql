-- Deploy: schemas/dashboard_public/tables/post_comments/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".post_comments FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
