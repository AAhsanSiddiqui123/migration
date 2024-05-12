-- Deploy: schemas/dashboard_public/tables/question_template_language_variations/columns/question_template_id/alterations/alt0000001452 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_template_language_variations/table
-- requires: schemas/dashboard_public/tables/question_template_language_variations/columns/question_template_id/column

BEGIN;

ALTER TABLE "dashboard_public".question_template_language_variations 
    ALTER COLUMN question_template_id SET NOT NULL;
COMMIT;
