-- Deploy: schemas/dashboard_public/tables/action_item_status_types/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_status_types/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".action_item_status_types TO authenticated;
COMMIT;