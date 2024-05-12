-- Deploy: schemas/dashboard_public/tables/user_questions/alterations/alt0000001430 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;
COMMENT ON TABLE "dashboard_public".user_questions IS E'@i18n user_question_language_variations';
COMMIT;
