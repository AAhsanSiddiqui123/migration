-- Deploy: schemas/dashboard_public/tables/question_values/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".question_values FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
