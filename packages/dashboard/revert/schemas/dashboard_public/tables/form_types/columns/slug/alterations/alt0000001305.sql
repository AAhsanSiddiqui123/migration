-- Revert: schemas/dashboard_public/tables/form_types/columns/slug/alterations/alt0000001305 from pg

BEGIN;
ALTER TABLE "dashboard_public".form_types DROP CONSTRAINT form_types_slug_chk;
COMMIT;  

