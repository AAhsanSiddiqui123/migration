-- Revert: schemas/dashboard_public/tables/object_type_language_variations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".object_type_language_variations FROM authenticated;
COMMIT;  

