-- Revert: schemas/dashboard_public/tables/actions/columns/once_per_object/alterations/alt0000000771 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN once_per_object DROP NOT NULL;


COMMIT;  

