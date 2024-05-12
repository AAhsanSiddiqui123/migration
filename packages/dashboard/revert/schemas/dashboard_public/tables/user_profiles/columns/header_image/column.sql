-- Revert: schemas/dashboard_public/tables/user_profiles/columns/header_image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles DROP COLUMN header_image;
COMMIT;  

