-- Deploy: schemas/dashboard_public/tables/group_goals/columns/group_id/alterations/alt0000001149 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table
-- requires: schemas/dashboard_public/tables/group_goals/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_goals 
    ALTER COLUMN group_id SET NOT NULL;
COMMIT;
