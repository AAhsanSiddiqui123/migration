-- Deploy: schemas/dashboard_public/tables/action_item_types/columns/id/alterations/alt0000000801 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table
-- requires: schemas/dashboard_public/tables/action_item_types/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_types 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
