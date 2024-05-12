-- Revert: schemas/dashboard_public/tables/locations/columns/owner_id/column/alterations/alt0000001512 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN owner_id;
COMMIT;  

