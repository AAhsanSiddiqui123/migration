-- Revert: schemas/dashboard_public/tables/object_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".object_types FROM authenticated;
COMMIT;  

