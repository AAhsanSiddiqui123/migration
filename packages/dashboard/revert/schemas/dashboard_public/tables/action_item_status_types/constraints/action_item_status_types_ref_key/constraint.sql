-- Revert: schemas/dashboard_public/tables/action_item_status_types/constraints/action_item_status_types_ref_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types 
    DROP CONSTRAINT action_item_status_types_ref_key;

COMMIT;  

