-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_user_question_id_fkey/alterations/alt0000001434 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_user_question_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_question_language_variations_user_question_id_fkey ON "dashboard_public".user_question_language_variations IS E'@omit manyToMany';
COMMIT;
