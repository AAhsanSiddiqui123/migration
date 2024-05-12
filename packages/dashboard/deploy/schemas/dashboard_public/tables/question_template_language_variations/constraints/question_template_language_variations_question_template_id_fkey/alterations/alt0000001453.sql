-- Deploy: schemas/dashboard_public/tables/question_template_language_variations/constraints/question_template_language_variations_question_template_id_fkey/alterations/alt0000001453 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_template_language_variations/constraints/question_template_language_variations_question_template_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT question_template_language_variations_question_template_id_fkey ON "dashboard_public".question_template_language_variations IS E'@omit manyToMany';
COMMIT;
