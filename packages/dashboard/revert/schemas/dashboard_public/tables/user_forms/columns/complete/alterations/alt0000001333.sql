-- Revert: schemas/dashboard_public/tables/user_forms/columns/complete/alterations/alt0000001333 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN complete DROP DEFAULT;

COMMIT;  

