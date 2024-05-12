-- Revert: schemas/dashboard_public/tables/message_groups/columns/id/alterations/alt0000001048 from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

