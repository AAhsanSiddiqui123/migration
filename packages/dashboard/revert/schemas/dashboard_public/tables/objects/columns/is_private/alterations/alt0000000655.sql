-- Revert: schemas/dashboard_public/tables/objects/columns/is_private/alterations/alt0000000655 from pg

BEGIN;


ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN is_private DROP DEFAULT;

COMMIT;  

