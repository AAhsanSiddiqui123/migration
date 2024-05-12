-- Deploy: schemas/dashboard_public/tables/user_questions/constraints/user_questions_template_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/id/column
-- requires: schemas/dashboard_public/tables/user_questions/columns/template_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_questions 
    ADD CONSTRAINT user_questions_template_id_fkey 
    FOREIGN KEY (template_id)
    REFERENCES "dashboard_public".question_templates (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
