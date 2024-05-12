-- Revert: schemas/dashboard_public/tables/role_types/constraints/role_types_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".role_types 
    DROP CONSTRAINT role_types_name_key;

COMMIT;  

