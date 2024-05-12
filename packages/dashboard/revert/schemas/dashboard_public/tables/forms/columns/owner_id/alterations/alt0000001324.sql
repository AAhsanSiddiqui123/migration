-- Revert: schemas/dashboard_public/tables/forms/columns/owner_id/alterations/alt0000001324 from pg

BEGIN;


ALTER TABLE "dashboard_public".forms 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

