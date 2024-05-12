-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/education/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN education;
COMMIT;  

