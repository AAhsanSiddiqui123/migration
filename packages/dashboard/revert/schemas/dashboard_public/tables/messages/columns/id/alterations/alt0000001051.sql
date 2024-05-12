-- Revert: schemas/dashboard_public/tables/messages/columns/id/alterations/alt0000001051 from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

