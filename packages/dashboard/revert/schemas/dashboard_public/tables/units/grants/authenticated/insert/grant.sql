-- Revert: schemas/dashboard_public/tables/units/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".units FROM authenticated;
COMMIT;  

