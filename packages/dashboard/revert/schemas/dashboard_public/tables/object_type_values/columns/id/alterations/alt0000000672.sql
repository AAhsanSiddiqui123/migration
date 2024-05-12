-- Revert: schemas/dashboard_public/tables/object_type_values/columns/id/alterations/alt0000000672 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

