-- Deploy: schemas/dashboard_public/tables/action_items/alterations/alt0000000805 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table

BEGIN;

ALTER TABLE "dashboard_public".action_items
    DISABLE ROW LEVEL SECURITY;
COMMIT;
