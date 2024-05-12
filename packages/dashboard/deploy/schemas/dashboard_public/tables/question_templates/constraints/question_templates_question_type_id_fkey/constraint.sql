-- Deploy: schemas/dashboard_public/tables/question_templates/constraints/question_templates_question_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_types/columns/id/column
-- requires: schemas/dashboard_public/tables/question_templates/columns/question_type_id/column

BEGIN;

ALTER TABLE "dashboard_public".question_templates 
    ADD CONSTRAINT question_templates_question_type_id_fkey 
    FOREIGN KEY (question_type_id)
    REFERENCES "dashboard_public".question_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
