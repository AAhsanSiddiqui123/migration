-- Deploy: schemas/dashboard_public/tables/user_answers/constraints/user_answers_question_value_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/question_values/table
-- requires: schemas/dashboard_public/tables/question_values/columns/id/column
-- requires: schemas/dashboard_public/tables/user_answers/columns/question_value_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_answers 
    ADD CONSTRAINT user_answers_question_value_id_fkey 
    FOREIGN KEY (question_value_id)
    REFERENCES "dashboard_public".question_values (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
