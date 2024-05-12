-- Revert: schemas/dashboard_public/tables/action_item_status_types/constraints/action_item_status_types_ref_key/alterations/alt0000001657 from pg

BEGIN;
COMMENT ON CONSTRAINT action_item_status_types_ref_key ON "dashboard_public".action_item_status_types IS NULL;
COMMIT;  

