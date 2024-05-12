-- Revert: schemas/dashboard_public/tables/object_type_values/columns/attr_id/alterations/alt0000000675 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN attr_id DROP NOT NULL;


COMMIT;  

