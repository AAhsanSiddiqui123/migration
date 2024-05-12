-- Deploy: schemas/dashboard_public/tables/action_item_types/columns/self_verifiable/alterations/alt0000001663 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table
-- requires: schemas/dashboard_public/tables/action_item_types/columns/self_verifiable/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_types 
    ALTER COLUMN self_verifiable SET DEFAULT false;
COMMIT;
