-- Revert: schemas/dashboard_public/tables/users/constraints/users_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".users 
    DROP CONSTRAINT users_pkey;

COMMIT;  

