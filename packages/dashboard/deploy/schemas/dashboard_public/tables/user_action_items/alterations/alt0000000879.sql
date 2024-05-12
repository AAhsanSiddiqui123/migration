-- Deploy: schemas/dashboard_public/tables/user_action_items/alterations/alt0000000879 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_items
    DISABLE ROW LEVEL SECURITY;
COMMIT;
