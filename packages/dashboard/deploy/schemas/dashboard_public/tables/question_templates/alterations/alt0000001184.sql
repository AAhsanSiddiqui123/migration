-- Deploy: schemas/dashboard_public/tables/question_templates/alterations/alt0000001184 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;

ALTER TABLE "dashboard_public".question_templates
    DISABLE ROW LEVEL SECURITY;
COMMIT;
