-- Deploy: schemas/dashboard_public/tables/question_templates/columns/is_reusable/alterations/alt0000001373 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/is_reusable/column

BEGIN;

ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN is_reusable SET DEFAULT false;
COMMIT;
