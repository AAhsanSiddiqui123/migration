-- Revert: schemas/dashboard_public/tables/organization_profile_variations/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations DROP COLUMN description;
COMMIT;  

