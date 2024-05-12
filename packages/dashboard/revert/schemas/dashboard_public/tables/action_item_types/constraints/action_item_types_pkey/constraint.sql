-- Revert: schemas/dashboard_public/tables/action_item_types/constraints/action_item_types_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types 
    DROP CONSTRAINT action_item_types_pkey;

COMMIT;  

