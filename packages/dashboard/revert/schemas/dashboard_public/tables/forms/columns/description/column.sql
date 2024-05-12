-- Revert: schemas/dashboard_public/tables/forms/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN description;
COMMIT;  

