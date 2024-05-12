-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/indexes/user_question_language_variations_user_question_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table
-- requires: schemas/dashboard_public/tables/user_question_language_variations/columns/user_question_id/column

BEGIN;
CREATE INDEX user_question_language_variations_user_question_id_idx ON "dashboard_public".user_question_language_variations (user_question_id);
COMMIT;
