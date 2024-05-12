-- Deploy: schemas/dashboard_public/tables/question_values/alterations/alt0000001441 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;
COMMENT ON TABLE "dashboard_public".question_values IS E'@i18n question_value_language_variations';
COMMIT;
