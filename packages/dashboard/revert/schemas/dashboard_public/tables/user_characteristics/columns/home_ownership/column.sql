-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/home_ownership/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN home_ownership;
COMMIT;  

