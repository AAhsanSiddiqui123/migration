-- Deploy: schemas/dashboard_public/tables/action_item_locations/alterations/alt0000001598 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
