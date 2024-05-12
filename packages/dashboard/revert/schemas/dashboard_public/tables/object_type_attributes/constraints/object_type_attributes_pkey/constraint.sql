-- Revert: schemas/dashboard_public/tables/object_type_attributes/constraints/object_type_attributes_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes 
    DROP CONSTRAINT object_type_attributes_pkey;

COMMIT;  

