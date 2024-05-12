-- Revert: schemas/dashboard_public/tables/user_viewed_actions/columns/owner_id/alterations/alt0000001016 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

