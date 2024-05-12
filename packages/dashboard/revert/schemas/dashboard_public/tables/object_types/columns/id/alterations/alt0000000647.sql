-- Revert: schemas/dashboard_public/tables/object_types/columns/id/alterations/alt0000000647 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

