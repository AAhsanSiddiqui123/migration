-- Revert: schemas/dashboard_public/tables/user_actions/columns/object_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN object_id;
COMMIT;  

