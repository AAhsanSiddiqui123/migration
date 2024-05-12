-- Deploy: schemas/dashboard_public/tables/action_items/columns/id/alterations/alt0000000807 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
