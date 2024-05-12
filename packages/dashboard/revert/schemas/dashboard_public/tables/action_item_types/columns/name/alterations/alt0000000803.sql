-- Revert: schemas/dashboard_public/tables/action_item_types/columns/name/alterations/alt0000000803 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

