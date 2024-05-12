-- Revert: schemas/dashboard_public/tables/actions/columns/is_private/alterations/alt0000000765 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_private DROP NOT NULL;


COMMIT;  

