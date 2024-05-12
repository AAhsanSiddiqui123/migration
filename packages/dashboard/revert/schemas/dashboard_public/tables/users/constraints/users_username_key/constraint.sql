-- Revert: schemas/dashboard_public/tables/users/constraints/users_username_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".users 
    DROP CONSTRAINT users_username_key;

COMMIT;  

