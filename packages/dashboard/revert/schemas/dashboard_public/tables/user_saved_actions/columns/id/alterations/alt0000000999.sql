-- Revert: schemas/dashboard_public/tables/user_saved_actions/columns/id/alterations/alt0000000999 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

