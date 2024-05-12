-- Deploy: schemas/dashboard_public/tables/form_questions/constraints/form_questions_form_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/forms/columns/id/column
-- requires: schemas/dashboard_public/tables/form_questions/columns/form_id/column

BEGIN;

ALTER TABLE "dashboard_public".form_questions 
    ADD CONSTRAINT form_questions_form_id_fkey 
    FOREIGN KEY (form_id)
    REFERENCES "dashboard_public".forms (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
