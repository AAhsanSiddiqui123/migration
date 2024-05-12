-- Deploy: schemas/dashboard_public/tables/form_questions/columns/page_num/alterations/alt0000001695 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/form_questions/columns/page_num/column

BEGIN;

ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN page_num SET DEFAULT 0;
COMMIT;
