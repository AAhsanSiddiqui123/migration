-- Revert: schemas/dashboard_public/tables/user_contacts/columns/full_name/alterations/alt0000000606 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_contacts.full_name IS NULL;
COMMIT;  

