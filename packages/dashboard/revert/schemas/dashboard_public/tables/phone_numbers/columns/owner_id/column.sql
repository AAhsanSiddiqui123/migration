-- Revert: schemas/dashboard_public/tables/phone_numbers/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".phone_numbers DROP COLUMN owner_id;
COMMIT;  

