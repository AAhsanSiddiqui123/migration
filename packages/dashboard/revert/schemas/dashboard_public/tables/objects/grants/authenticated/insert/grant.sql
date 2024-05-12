-- Revert: schemas/dashboard_public/tables/objects/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".objects FROM authenticated;
COMMIT;  

