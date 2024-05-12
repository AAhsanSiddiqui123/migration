-- Deploy: schemas/dashboard_public/tables/question_types/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".question_types FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
