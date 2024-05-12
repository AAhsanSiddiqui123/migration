-- Revert: schemas/dashboard_public/tables/user_locations/table/alterations/alt0000001531 from pg

BEGIN;
DROP TABLE "dashboard_public".user_locations;
COMMIT;  

