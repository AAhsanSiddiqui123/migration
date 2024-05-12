-- Deploy: schemas/dashboard_public/tables/question_template_language_variations/constraints/question_template_language_variations_question_template_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/id/column
-- requires: schemas/dashboard_public/tables/question_template_language_variations/table
-- requires: schemas/dashboard_public/tables/question_template_language_variations/columns/question_template_id/column

BEGIN;

ALTER TABLE "dashboard_public".question_template_language_variations 
    ADD CONSTRAINT question_template_language_variations_question_template_id_fkey 
    FOREIGN KEY (question_template_id)
    REFERENCES "dashboard_public".question_templates (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
