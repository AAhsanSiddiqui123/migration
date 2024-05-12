-- Revert: schemas/dashboard_public/tables/action_item_types/constraints/action_item_types_slug_key/alterations/alt0000001365 from pg

BEGIN;
COMMENT ON CONSTRAINT action_item_types_slug_key ON "dashboard_public".action_item_types IS NULL;
COMMIT;  

