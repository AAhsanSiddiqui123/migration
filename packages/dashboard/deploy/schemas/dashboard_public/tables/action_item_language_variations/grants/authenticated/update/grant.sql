-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".action_item_language_variations TO authenticated;
COMMIT;
