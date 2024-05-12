-- Revert: schemas/dashboard_public/tables/user_contacts/columns/id/alterations/alt0000000601 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

