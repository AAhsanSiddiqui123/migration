-- Revert: schemas/dashboard_public/tables/related_actions/columns/required_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions DROP COLUMN required_id;
COMMIT;  

