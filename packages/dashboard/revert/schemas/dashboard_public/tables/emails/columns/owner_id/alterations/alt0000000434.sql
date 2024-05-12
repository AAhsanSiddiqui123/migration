-- Revert: schemas/dashboard_public/tables/emails/columns/owner_id/alterations/alt0000000434 from pg

BEGIN;


ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

