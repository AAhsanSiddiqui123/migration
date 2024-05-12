-- Deploy: schemas/dashboard_public/tables/action_item_types/alterations/alt0000000800 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
