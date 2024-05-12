-- Deploy: schemas/dashboard_public/tables/question_templates/columns/question_type_id/alterations/alt0000001313 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/question_type_id/column

BEGIN;

ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN question_type_id SET NOT NULL;
COMMIT;
