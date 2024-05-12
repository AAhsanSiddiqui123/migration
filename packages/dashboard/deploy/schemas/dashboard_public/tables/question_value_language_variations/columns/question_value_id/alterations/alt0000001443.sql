-- Deploy: schemas/dashboard_public/tables/question_value_language_variations/columns/question_value_id/alterations/alt0000001443 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_value_language_variations/table
-- requires: schemas/dashboard_public/tables/question_value_language_variations/columns/question_value_id/column

BEGIN;

ALTER TABLE "dashboard_public".question_value_language_variations 
    ALTER COLUMN question_value_id SET NOT NULL;
COMMIT;
