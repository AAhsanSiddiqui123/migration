-- Revert: schemas/dashboard_public/tables/messages/columns/group_id/alterations/alt0000001058 from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN group_id DROP NOT NULL;


COMMIT;  

