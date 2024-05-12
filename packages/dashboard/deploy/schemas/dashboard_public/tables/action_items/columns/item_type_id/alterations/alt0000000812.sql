-- Deploy: schemas/dashboard_public/tables/action_items/columns/item_type_id/alterations/alt0000000812 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/item_type_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN item_type_id SET NOT NULL;
COMMIT;
