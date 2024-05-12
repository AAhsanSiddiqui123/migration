-- Revert: schemas/dashboard_public/tables/action_items/columns/id/alterations/alt0000000806 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

