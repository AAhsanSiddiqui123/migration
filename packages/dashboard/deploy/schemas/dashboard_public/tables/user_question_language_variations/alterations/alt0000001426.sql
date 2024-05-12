-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/alterations/alt0000001426 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".user_question_language_variations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
