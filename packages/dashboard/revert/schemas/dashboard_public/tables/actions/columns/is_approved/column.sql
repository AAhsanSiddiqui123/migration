-- Revert: schemas/dashboard_public/tables/actions/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN is_approved;
COMMIT;  

