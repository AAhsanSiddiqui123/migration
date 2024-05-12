-- Revert: schemas/dashboard_public/tables/user_locations/columns/user_id/column/alterations/alt0000001537 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN user_id;
COMMIT;  

