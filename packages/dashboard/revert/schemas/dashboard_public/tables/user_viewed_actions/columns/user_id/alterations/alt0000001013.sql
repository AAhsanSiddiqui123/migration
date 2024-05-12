-- Revert: schemas/dashboard_public/tables/user_viewed_actions/columns/user_id/alterations/alt0000001013 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  

