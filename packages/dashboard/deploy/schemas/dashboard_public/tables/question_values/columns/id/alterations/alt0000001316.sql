-- Deploy: schemas/dashboard_public/tables/question_values/columns/id/alterations/alt0000001316 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table
-- requires: schemas/dashboard_public/tables/question_values/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".question_values 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
