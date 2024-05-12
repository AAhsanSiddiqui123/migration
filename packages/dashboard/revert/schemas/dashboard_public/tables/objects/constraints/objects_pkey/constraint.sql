-- Revert: schemas/dashboard_public/tables/objects/constraints/objects_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".objects 
    DROP CONSTRAINT objects_pkey;

COMMIT;  

