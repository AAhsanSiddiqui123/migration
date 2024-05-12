-- Revert: schemas/dashboard_public/tables/addresses/columns/id/alterations/alt0000001639 from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

