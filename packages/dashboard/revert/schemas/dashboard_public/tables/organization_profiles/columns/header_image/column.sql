-- Revert: schemas/dashboard_public/tables/organization_profiles/columns/header_image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN header_image;
COMMIT;  

