-- Deploy: schemas/dashboard_public/tables/user_questions/constraints/user_questions_question_type_id_fkey/alterations/alt0000001312 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/constraints/user_questions_question_type_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_questions_question_type_id_fkey ON "dashboard_public".user_questions IS E'@omit manyToMany';
COMMIT;
