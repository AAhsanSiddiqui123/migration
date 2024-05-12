-- Revert: schemas/dashboard_public/tables/posts/columns/url/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN url;
COMMIT;  

