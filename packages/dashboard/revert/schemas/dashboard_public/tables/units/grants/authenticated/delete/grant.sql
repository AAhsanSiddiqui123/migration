-- Revert: schemas/dashboard_public/tables/units/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".units FROM authenticated;
COMMIT;  

