-- Revert: schemas/dashboard_public/tables/action_item_types/constraints/action_item_types_slug_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types 
    DROP CONSTRAINT action_item_types_slug_key;

COMMIT;  

