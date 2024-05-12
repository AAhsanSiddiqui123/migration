-- Revert: schemas/dashboard_public/tables/user_pass_actions/columns/id/alterations/alt0000000987 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

