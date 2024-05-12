-- Revert: schemas/dashboard_public/tables/posts/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN location;
COMMIT;  

