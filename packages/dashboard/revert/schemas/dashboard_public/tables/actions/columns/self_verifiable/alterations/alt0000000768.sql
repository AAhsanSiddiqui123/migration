-- Revert: schemas/dashboard_public/tables/actions/columns/self_verifiable/alterations/alt0000000768 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN self_verifiable DROP DEFAULT;

COMMIT;  

