-- Deploy: schemas/dashboard_public/tables/question_template_language_variations/indexes/question_template_language_variations_question_template_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_template_language_variations/table
-- requires: schemas/dashboard_public/tables/question_template_language_variations/columns/question_template_id/column

BEGIN;
CREATE INDEX question_template_language_variations_question_template_id_idx ON "dashboard_public".question_template_language_variations (question_template_id);
COMMIT;
