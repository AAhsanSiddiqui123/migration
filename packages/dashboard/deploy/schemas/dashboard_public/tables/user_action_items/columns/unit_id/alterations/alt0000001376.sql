-- Deploy: schemas/dashboard_public/tables/user_action_items/columns/unit_id/alterations/alt0000001376 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/unit_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN unit_id SET DEFAULT uuid_nil();
COMMIT;
