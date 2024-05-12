-- Deploy: schemas/dashboard_public/tables/action_item_status_types/alterations/alt0000001651 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_status_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_status_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
