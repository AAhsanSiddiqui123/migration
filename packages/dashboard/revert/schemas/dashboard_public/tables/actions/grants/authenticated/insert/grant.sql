-- Revert: schemas/dashboard_public/tables/actions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".actions FROM authenticated;
COMMIT;  

