-- Revert: schemas/dashboard_public/tables/action_items/columns/action_id/alterations/alt0000000816 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

