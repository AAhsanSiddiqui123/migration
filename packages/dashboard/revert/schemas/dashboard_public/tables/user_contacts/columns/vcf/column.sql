-- Revert: schemas/dashboard_public/tables/user_contacts/columns/vcf/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts DROP COLUMN vcf;
COMMIT;  

