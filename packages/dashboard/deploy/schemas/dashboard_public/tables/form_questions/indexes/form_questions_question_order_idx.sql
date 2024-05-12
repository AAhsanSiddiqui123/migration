-- Deploy: schemas/dashboard_public/tables/form_questions/indexes/form_questions_question_order_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/form_questions/columns/question_order/column

BEGIN;
CREATE INDEX form_questions_question_order_idx ON "dashboard_public".form_questions (question_order);
COMMIT;
