-- Deploy: schemas/dashboard_public/tables/user_action_items/columns/action_id/alterations/alt0000000889 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/action_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN action_id SET NOT NULL;
COMMIT;