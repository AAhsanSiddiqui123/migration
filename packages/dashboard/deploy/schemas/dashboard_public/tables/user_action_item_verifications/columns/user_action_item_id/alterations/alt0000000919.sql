-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/columns/user_action_item_id/alterations/alt0000000919 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/columns/user_action_item_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN user_action_item_id SET NOT NULL;
COMMIT;
