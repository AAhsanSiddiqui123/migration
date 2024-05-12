-- Revert: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".impacts_conditions FROM authenticated;
COMMIT;  

