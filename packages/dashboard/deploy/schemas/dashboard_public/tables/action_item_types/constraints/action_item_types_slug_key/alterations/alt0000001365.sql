-- Deploy: schemas/dashboard_public/tables/action_item_types/constraints/action_item_types_slug_key/alterations/alt0000001365 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/constraints/action_item_types_slug_key/constraint

BEGIN;
COMMENT ON CONSTRAINT action_item_types_slug_key ON "dashboard_public".action_item_types IS E'@omit';
COMMIT;
