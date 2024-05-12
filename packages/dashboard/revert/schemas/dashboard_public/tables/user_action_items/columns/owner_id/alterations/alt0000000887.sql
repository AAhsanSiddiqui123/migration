-- Revert: schemas/dashboard_public/tables/user_action_items/columns/owner_id/alterations/alt0000000887 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

