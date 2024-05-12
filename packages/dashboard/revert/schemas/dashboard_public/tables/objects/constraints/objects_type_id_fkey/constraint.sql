-- Revert: schemas/dashboard_public/tables/objects/constraints/objects_type_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".objects 
    DROP CONSTRAINT objects_type_id_fkey;

COMMIT;  

