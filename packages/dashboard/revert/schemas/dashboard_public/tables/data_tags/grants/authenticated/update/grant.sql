-- Revert: schemas/dashboard_public/tables/data_tags/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".data_tags FROM authenticated;
COMMIT;  

