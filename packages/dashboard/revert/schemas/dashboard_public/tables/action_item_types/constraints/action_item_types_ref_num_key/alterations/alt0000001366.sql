-- Revert: schemas/dashboard_public/tables/action_item_types/constraints/action_item_types_ref_num_key/alterations/alt0000001366 from pg

BEGIN;
COMMENT ON CONSTRAINT action_item_types_ref_num_key ON "dashboard_public".action_item_types IS NULL;
COMMIT;  

