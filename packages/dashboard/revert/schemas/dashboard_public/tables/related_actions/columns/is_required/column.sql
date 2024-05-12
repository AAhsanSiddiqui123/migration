-- Revert: schemas/dashboard_public/tables/related_actions/columns/is_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions DROP COLUMN is_required;
COMMIT;  

