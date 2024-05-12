-- Deploy: schemas/dashboard_public/tables/question_templates/constraints/question_templates_name_key/alterations/alt0000001188 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/constraints/question_templates_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT question_templates_name_key ON "dashboard_public".question_templates IS E'@omit';
COMMIT;
