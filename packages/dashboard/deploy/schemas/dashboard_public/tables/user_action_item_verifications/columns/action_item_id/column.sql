-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/columns/action_item_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_item_verifications ADD COLUMN action_item_id uuid;
COMMIT;
