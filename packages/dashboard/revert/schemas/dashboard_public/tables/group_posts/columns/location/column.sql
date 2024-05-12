-- Revert: schemas/dashboard_public/tables/group_posts/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts DROP COLUMN location;
COMMIT;  

