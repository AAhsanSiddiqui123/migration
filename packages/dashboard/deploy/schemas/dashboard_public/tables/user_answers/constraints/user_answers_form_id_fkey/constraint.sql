-- Deploy: schemas/dashboard_public/tables/user_answers/constraints/user_answers_form_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/forms/columns/id/column
-- requires: schemas/dashboard_public/tables/user_answers/columns/form_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_answers 
    ADD CONSTRAINT user_answers_form_id_fkey 
    FOREIGN KEY (form_id)
    REFERENCES "dashboard_public".forms (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
