-- Deploy: schemas/dashboard_public/tables/action_goals/columns/owner_id/alterations/alt0000000785 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table
-- requires: schemas/dashboard_public/tables/action_goals/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_goals 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
