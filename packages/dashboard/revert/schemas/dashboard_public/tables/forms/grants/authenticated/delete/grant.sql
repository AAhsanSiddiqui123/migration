-- Revert: schemas/dashboard_public/tables/forms/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".forms FROM authenticated;
COMMIT;  

