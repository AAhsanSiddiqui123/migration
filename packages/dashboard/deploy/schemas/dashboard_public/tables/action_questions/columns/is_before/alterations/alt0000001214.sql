-- Deploy: schemas/dashboard_public/tables/action_questions/columns/is_before/alterations/alt0000001214 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table
-- requires: schemas/dashboard_public/tables/action_questions/columns/is_before/column

BEGIN;

ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN is_before SET NOT NULL;
COMMIT;
