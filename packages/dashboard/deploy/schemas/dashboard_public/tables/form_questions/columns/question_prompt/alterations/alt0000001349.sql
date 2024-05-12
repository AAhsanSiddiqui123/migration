-- Deploy: schemas/dashboard_public/tables/form_questions/columns/question_prompt/alterations/alt0000001349 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/columns/question_prompt/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".form_questions.question_prompt IS E'optional prompt override';
COMMIT;
