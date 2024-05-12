-- Revert: schemas/dashboard_public/tables/messages/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".messages FROM authenticated;
COMMIT;  

