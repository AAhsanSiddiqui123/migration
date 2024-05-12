-- Revert: schemas/dashboard_public/tables/user_connections/columns/responder_id/alterations/alt0000000614 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections 
    ALTER COLUMN responder_id DROP NOT NULL;


COMMIT;  

