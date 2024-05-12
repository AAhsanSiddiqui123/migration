-- Revert: schemas/dashboard_public/tables/user_contacts/columns/vcf/alterations/alt0000000604 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_contacts.vcf IS NULL;
COMMIT;  

