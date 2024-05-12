-- Revert: schemas/dashboard_public/tables/objects/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".objects FROM authenticated;
COMMIT;  

