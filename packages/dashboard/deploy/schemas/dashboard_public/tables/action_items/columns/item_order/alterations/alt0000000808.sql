-- Deploy: schemas/dashboard_public/tables/action_items/columns/item_order/alterations/alt0000000808 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/item_order/column

BEGIN;

ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN item_order SET DEFAULT 0;
COMMIT;
