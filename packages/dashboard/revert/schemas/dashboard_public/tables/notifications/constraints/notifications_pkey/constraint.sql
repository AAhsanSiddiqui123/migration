-- Revert: schemas/dashboard_public/tables/notifications/constraints/notifications_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications 
    DROP CONSTRAINT notifications_pkey;

COMMIT;  

