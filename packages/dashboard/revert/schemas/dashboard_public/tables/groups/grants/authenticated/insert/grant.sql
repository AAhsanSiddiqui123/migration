-- Revert: schemas/dashboard_public/tables/groups/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".groups FROM authenticated;
COMMIT;  

