-- Revert: schemas/dashboard_public/tables/actions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".actions FROM authenticated;
COMMIT;  

