-- Revert: schemas/dashboard_public/tables/actions/columns/url/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN url;
COMMIT;  

