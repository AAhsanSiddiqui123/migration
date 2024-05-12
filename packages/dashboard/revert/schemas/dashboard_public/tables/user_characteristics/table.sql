-- Revert: schemas/dashboard_public/tables/user_characteristics/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_characteristics;
COMMIT;  

