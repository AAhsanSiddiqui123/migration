-- Deploy: schemas/dashboard_public/tables/form_questions/constraints/form_questions_question_id_fkey/alterations/alt0000001356 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/constraints/form_questions_question_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT form_questions_question_id_fkey ON "dashboard_public".form_questions IS E'@manyToManyFieldName questions';
COMMIT;
