-- Revert: schemas/dashboard_public/tables/objects/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".objects FROM authenticated;
COMMIT;  

