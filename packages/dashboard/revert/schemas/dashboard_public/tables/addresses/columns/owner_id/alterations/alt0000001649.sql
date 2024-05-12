-- Revert: schemas/dashboard_public/tables/addresses/columns/owner_id/alterations/alt0000001649 from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

