-- Revert: schemas/dashboard_public/tables/user_actions/columns/verified/alterations/alt0000000850 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN verified DROP DEFAULT;

COMMIT;  

