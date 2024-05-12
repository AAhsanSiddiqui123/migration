-- Revert: schemas/dashboard_public/tables/user_pass_actions/columns/user_id/alterations/alt0000000989 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  

