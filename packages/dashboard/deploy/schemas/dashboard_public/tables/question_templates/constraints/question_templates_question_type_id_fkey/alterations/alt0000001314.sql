-- Deploy: schemas/dashboard_public/tables/question_templates/constraints/question_templates_question_type_id_fkey/alterations/alt0000001314 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/constraints/question_templates_question_type_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT question_templates_question_type_id_fkey ON "dashboard_public".question_templates IS E'@omit manyToMany';
COMMIT;
