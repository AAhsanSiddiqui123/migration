-- Deploy: schemas/dashboard_public/tables/question_templates/columns/question_type/alterations/alt0000001309 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/question_type/column

BEGIN;

ALTER TABLE "dashboard_public".question_templates 
    DROP COLUMN question_type;
COMMIT;
