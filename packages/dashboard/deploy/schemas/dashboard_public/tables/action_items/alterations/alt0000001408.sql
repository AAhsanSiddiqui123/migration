-- Deploy: schemas/dashboard_public/tables/action_items/alterations/alt0000001408 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table

BEGIN;
COMMENT ON TABLE "dashboard_public".action_items IS E'@i18n action_item_language_variations';
COMMIT;
