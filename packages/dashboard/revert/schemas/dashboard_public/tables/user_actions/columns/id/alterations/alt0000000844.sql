-- Revert: schemas/dashboard_public/tables/user_actions/columns/id/alterations/alt0000000844 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

