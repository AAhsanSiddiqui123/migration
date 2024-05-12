-- Revert: schemas/dashboard_public/tables/quantities/columns/id/alterations/alt0000000639 from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

