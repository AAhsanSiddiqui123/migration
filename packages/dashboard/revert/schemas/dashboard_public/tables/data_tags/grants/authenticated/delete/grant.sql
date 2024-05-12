-- Revert: schemas/dashboard_public/tables/data_tags/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".data_tags FROM authenticated;
COMMIT;  

