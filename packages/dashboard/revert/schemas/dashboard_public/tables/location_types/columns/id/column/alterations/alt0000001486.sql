-- Revert: schemas/dashboard_public/tables/location_types/columns/id/column/alterations/alt0000001486 from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types DROP COLUMN id;
COMMIT;  

