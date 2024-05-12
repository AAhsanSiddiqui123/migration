-- Deploy: schemas/dashboard_public/tables/form_questions/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".form_questions FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
