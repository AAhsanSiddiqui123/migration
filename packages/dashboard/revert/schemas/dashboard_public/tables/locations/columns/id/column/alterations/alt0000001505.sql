-- Revert: schemas/dashboard_public/tables/locations/columns/id/column/alterations/alt0000001505 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN id;
COMMIT;  

