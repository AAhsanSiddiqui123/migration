-- Revert: schemas/dashboard_public/tables/impacts/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN description;
COMMIT;  

