-- Deploy: schemas/dashboard_public/tables/action_questions/columns/action_id/alterations/alt0000001217 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table
-- requires: schemas/dashboard_public/tables/action_questions/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN action_id SET NOT NULL;
COMMIT;
