-- Revert: schemas/dashboard_public/tables/messages/alterations/alt0000001050 from pg

BEGIN;


ALTER TABLE "dashboard_public".messages
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

