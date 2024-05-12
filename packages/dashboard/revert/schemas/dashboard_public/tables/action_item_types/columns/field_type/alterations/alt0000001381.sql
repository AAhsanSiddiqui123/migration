-- Revert: schemas/dashboard_public/tables/action_item_types/columns/field_type/alterations/alt0000001381 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_item_types.field_type IS NULL;
COMMIT;  

