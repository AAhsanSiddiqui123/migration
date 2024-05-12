-- Revert: schemas/dashboard_public/tables/actions/columns/self_verifiable/alterations/alt0000000767 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN self_verifiable DROP NOT NULL;


COMMIT;  

