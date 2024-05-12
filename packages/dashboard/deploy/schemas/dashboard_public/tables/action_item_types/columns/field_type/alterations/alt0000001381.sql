-- Deploy: schemas/dashboard_public/tables/action_item_types/columns/field_type/alterations/alt0000001381 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/columns/field_type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_item_types.field_type IS E'e.g. text, numeric, location, etc.';
COMMIT;
