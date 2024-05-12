-- Deploy: schemas/dashboard_public/tables/action_item_types/columns/self_verifiable/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_types ADD COLUMN self_verifiable boolean;
COMMIT;
