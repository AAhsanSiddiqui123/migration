-- Deploy: schemas/dashboard_public/tables/action_items/columns/self_verifiable/alterations/alt0000001662 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/self_verifiable/column

BEGIN;

ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN self_verifiable SET DEFAULT false;
COMMIT;
