-- Revert: schemas/dashboard_public/tables/objects/columns/owner_id/alterations/alt0000000657 from pg

BEGIN;


ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

