-- Revert: schemas/dashboard_public/tables/impacts/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".impacts FROM authenticated;
COMMIT;  

