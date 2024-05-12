-- Revert: schemas/dashboard_public/tables/user_contacts/columns/id/alterations/alt0000000600 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

