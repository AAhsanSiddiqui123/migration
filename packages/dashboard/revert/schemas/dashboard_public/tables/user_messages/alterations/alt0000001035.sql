-- Revert: schemas/dashboard_public/tables/user_messages/alterations/alt0000001035 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

