-- Deploy: schemas/dashboard_public/tables/user_answers/constraints/user_answers_question_value_id_fkey/alterations/alt0000001345 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/constraints/user_answers_question_value_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_answers_question_value_id_fkey ON "dashboard_public".user_answers IS E'@omit manyToMany';
COMMIT;
