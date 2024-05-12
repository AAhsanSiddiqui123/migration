-- Revert: schemas/dashboard_public/tables/users/constraints/users_type_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".users 
    DROP CONSTRAINT users_type_fkey;

COMMIT;  

