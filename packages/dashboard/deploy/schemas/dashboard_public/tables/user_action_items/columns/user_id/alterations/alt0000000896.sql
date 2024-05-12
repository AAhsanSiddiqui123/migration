-- Deploy: schemas/dashboard_public/tables/user_action_items/columns/user_id/alterations/alt0000000896 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN user_id SET DEFAULT uuid_nil();
COMMIT;
