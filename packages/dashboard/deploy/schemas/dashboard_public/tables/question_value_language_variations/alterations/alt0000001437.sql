-- Deploy: schemas/dashboard_public/tables/question_value_language_variations/alterations/alt0000001437 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_value_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".question_value_language_variations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
