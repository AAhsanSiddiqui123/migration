-- Revert: schemas/dashboard_public/tables/actions/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN description;
COMMIT;  

