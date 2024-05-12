-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/columns/user_question_id/alterations/alt0000001433 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table
-- requires: schemas/dashboard_public/tables/user_question_language_variations/columns/user_question_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_question_language_variations 
    ALTER COLUMN user_question_id SET NOT NULL;
COMMIT;
