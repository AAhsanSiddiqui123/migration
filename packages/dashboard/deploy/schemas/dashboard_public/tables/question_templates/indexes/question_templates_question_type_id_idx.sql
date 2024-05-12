-- Deploy: schemas/dashboard_public/tables/question_templates/indexes/question_templates_question_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/question_type_id/column

BEGIN;
CREATE INDEX question_templates_question_type_id_idx ON "dashboard_public".question_templates (question_type_id);
COMMIT;
