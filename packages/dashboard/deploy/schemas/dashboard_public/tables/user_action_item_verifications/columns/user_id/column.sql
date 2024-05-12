-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/columns/user_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_item_verifications ADD COLUMN user_id uuid;
COMMIT;
