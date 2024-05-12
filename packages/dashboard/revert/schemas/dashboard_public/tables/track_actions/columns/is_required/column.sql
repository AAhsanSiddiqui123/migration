-- Revert: schemas/dashboard_public/tables/track_actions/columns/is_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions DROP COLUMN is_required;
COMMIT;  

