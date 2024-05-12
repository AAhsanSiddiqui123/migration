-- Revert: schemas/dashboard_public/tables/tags/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".tags FROM authenticated;
COMMIT;  

