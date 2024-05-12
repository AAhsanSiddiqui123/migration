-- Revert: schemas/dashboard_public/tables/user_locations/columns/description/column/alterations/alt0000001541 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN description;
COMMIT;  

