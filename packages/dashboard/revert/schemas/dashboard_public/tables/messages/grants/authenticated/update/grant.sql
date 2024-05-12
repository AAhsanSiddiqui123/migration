-- Revert: schemas/dashboard_public/tables/messages/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".messages FROM authenticated;
COMMIT;  

