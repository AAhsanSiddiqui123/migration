-- Revert: schemas/dashboard_public/tables/addresses/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".addresses FROM authenticated;
COMMIT;  

