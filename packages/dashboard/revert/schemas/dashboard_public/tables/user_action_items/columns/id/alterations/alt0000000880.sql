-- Revert: schemas/dashboard_public/tables/user_action_items/columns/id/alterations/alt0000000880 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

