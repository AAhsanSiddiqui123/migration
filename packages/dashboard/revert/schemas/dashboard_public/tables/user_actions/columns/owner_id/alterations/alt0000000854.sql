-- Revert: schemas/dashboard_public/tables/user_actions/columns/owner_id/alterations/alt0000000854 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

