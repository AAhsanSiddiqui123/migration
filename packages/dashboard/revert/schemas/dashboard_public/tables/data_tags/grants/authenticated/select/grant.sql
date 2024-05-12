-- Revert: schemas/dashboard_public/tables/data_tags/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".data_tags FROM authenticated;
COMMIT;  

