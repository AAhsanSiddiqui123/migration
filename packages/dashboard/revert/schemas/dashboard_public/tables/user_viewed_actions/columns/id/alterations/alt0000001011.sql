-- Revert: schemas/dashboard_public/tables/user_viewed_actions/columns/id/alterations/alt0000001011 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

