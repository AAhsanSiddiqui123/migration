-- Revert: schemas/dashboard_public/tables/users/columns/id/alterations/alt0000000010 from pg

BEGIN;


ALTER TABLE "dashboard_public".users 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

