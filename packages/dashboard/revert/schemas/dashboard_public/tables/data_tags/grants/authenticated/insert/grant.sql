-- Revert: schemas/dashboard_public/tables/data_tags/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".data_tags FROM authenticated;
COMMIT;  

