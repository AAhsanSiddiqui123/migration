-- Deploy: schemas/dashboard_public/tables/action_items/columns/action_id/alterations/alt0000000816 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN action_id SET NOT NULL;
COMMIT;
