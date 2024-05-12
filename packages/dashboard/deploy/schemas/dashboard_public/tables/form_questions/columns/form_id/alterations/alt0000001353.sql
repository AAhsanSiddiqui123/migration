-- Deploy: schemas/dashboard_public/tables/form_questions/columns/form_id/alterations/alt0000001353 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/form_questions/columns/form_id/column

BEGIN;

ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN form_id SET NOT NULL;
COMMIT;
