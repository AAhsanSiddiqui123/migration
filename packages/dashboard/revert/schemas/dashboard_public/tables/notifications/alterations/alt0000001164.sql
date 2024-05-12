-- Revert: schemas/dashboard_public/tables/notifications/alterations/alt0000001164 from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

