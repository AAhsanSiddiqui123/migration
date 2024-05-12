-- Revert: schemas/dashboard_public/tables/action_item_types/columns/id/alterations/alt0000000801 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

