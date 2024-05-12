-- Revert: schemas/dashboard_public/tables/actions/columns/id/alterations/alt0000000757 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

