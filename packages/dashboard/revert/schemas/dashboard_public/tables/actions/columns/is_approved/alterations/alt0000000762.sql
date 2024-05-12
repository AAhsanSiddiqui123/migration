-- Revert: schemas/dashboard_public/tables/actions/columns/is_approved/alterations/alt0000000762 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  

