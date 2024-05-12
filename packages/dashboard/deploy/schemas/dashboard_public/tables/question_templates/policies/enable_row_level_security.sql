-- Deploy: schemas/dashboard_public/tables/question_templates/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;

ALTER TABLE "dashboard_public".question_templates
    ENABLE ROW LEVEL SECURITY;
COMMIT;
