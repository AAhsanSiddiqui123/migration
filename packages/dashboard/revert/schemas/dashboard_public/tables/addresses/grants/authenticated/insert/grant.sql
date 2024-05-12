-- Revert: schemas/dashboard_public/tables/addresses/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".addresses FROM authenticated;
COMMIT;  

