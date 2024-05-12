-- Deploy: schemas/dashboard_public/tables/user_questions/indexes/user_questions_question_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/question_type_id/column

BEGIN;
CREATE INDEX user_questions_question_type_id_idx ON "dashboard_public".user_questions (question_type_id);
COMMIT;
