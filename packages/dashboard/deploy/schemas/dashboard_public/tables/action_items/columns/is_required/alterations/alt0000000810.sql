-- Deploy: schemas/dashboard_public/tables/action_items/columns/is_required/alterations/alt0000000810 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/is_required/column

BEGIN;

ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN is_required SET DEFAULT TRUE;
COMMIT;
