-- Deploy: schemas/dashboard_public/tables/user_action_items/columns/complete/alterations/alt0000000884 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/complete/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN complete SET DEFAULT false;
COMMIT;
