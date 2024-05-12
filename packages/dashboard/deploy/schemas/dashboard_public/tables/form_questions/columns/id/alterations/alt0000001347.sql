-- Deploy: schemas/dashboard_public/tables/form_questions/columns/id/alterations/alt0000001347 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/form_questions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
