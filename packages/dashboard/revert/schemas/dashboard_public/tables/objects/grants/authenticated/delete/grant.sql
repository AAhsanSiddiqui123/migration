-- Revert: schemas/dashboard_public/tables/objects/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".objects FROM authenticated;
COMMIT;  

