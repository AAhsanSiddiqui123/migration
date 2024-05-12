-- Deploy: schemas/dashboard_public/tables/action_item_types/columns/name/alterations/alt0000000803 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table
-- requires: schemas/dashboard_public/tables/action_item_types/columns/name/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_types 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
