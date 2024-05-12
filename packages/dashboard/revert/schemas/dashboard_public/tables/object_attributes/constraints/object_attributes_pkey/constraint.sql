-- Revert: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes 
    DROP CONSTRAINT object_attributes_pkey;

COMMIT;  

