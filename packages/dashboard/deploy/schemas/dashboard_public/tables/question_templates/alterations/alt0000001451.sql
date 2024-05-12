-- Deploy: schemas/dashboard_public/tables/question_templates/alterations/alt0000001451 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;
COMMENT ON TABLE "dashboard_public".question_templates IS E'@i18n question_template_language_variations';
COMMIT;
