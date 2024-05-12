-- Revert: schemas/dashboard_public/tables/messages/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".messages FROM authenticated;
COMMIT;  

