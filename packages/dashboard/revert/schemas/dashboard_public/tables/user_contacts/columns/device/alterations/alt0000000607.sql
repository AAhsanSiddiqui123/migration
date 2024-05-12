-- Revert: schemas/dashboard_public/tables/user_contacts/columns/device/alterations/alt0000000607 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_contacts.device IS NULL;
COMMIT;  

