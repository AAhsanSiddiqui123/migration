-- Revert: schemas/dashboard_public/tables/user_messages/columns/id/alterations/alt0000001036 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

