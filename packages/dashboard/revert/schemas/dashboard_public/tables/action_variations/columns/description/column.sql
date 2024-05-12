-- Revert: schemas/dashboard_public/tables/action_variations/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations DROP COLUMN description;
COMMIT;  

