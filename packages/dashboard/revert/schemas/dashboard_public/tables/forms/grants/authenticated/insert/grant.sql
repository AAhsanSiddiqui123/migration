-- Revert: schemas/dashboard_public/tables/forms/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".forms FROM authenticated;
COMMIT;  

