-- Revert: schemas/dashboard_public/tables/user_connections/columns/id/alterations/alt0000000610 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

