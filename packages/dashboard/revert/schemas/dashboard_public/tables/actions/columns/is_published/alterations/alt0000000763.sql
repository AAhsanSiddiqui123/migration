-- Revert: schemas/dashboard_public/tables/actions/columns/is_published/alterations/alt0000000763 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_published DROP NOT NULL;


COMMIT;  

