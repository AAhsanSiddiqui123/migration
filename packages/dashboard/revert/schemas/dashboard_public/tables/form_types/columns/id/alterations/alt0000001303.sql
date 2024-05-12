-- Revert: schemas/dashboard_public/tables/form_types/columns/id/alterations/alt0000001303 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

