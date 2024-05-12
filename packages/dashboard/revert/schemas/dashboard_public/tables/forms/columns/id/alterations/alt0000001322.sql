-- Revert: schemas/dashboard_public/tables/forms/columns/id/alterations/alt0000001322 from pg

BEGIN;


ALTER TABLE "dashboard_public".forms 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

