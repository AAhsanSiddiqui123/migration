-- Revert: schemas/dashboard_public/tables/user_contacts/columns/full_name/alterations/alt0000000605 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_contacts DROP CONSTRAINT user_contacts_full_name_chk;
COMMIT;  

