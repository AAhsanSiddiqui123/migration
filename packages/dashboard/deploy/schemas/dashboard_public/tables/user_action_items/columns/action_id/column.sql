-- Deploy: schemas/dashboard_public/tables/user_action_items/columns/action_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_items ADD COLUMN action_id uuid;
COMMIT;
