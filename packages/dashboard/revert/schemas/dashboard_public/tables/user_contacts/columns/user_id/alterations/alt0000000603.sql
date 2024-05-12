-- Revert: schemas/dashboard_public/tables/user_contacts/columns/user_id/alterations/alt0000000603 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

