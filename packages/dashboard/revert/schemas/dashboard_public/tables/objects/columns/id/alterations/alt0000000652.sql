-- Revert: schemas/dashboard_public/tables/objects/columns/id/alterations/alt0000000652 from pg

BEGIN;


ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

