-- Revert: schemas/dashboard_public/tables/action_items/constraints/action_items_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    DROP CONSTRAINT action_items_pkey;

COMMIT;  

