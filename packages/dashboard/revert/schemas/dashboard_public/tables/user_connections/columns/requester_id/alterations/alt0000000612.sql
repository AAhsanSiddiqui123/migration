-- Revert: schemas/dashboard_public/tables/user_connections/columns/requester_id/alterations/alt0000000612 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections 
    ALTER COLUMN requester_id DROP NOT NULL;


COMMIT;  

