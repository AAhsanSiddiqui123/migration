-- Deploy: schemas/dashboard_public/tables/group_goals/columns/id/alterations/alt0000001143 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table
-- requires: schemas/dashboard_public/tables/group_goals/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".group_goals 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
