-- Revert: schemas/dashboard_public/tables/object_attributes/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".object_attributes FROM authenticated;
COMMIT;  

