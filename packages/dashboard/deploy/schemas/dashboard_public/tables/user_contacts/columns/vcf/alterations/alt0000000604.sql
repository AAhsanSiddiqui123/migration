-- Deploy: schemas/dashboard_public/tables/user_contacts/columns/vcf/alterations/alt0000000604 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/columns/vcf/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_contacts.vcf IS E'the VCF file for storing contact information for a person or business';
COMMIT;
