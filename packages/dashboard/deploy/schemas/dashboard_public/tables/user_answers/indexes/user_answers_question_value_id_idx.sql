-- Deploy: schemas/dashboard_public/tables/user_answers/indexes/user_answers_question_value_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_public/tables/user_answers/columns/question_value_id/column

BEGIN;
CREATE INDEX user_answers_question_value_id_idx ON "dashboard_public".user_answers (question_value_id);
COMMIT;
