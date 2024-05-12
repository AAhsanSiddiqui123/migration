-- Revert: schemas/dashboard_public/tables/form_types/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types DROP COLUMN description;
COMMIT;  

