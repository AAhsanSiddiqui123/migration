-- Revert: schemas/dashboard_public/tables/object_type_values/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".object_type_values FROM authenticated;
COMMIT;  

