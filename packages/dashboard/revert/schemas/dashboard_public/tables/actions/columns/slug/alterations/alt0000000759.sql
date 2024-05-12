-- Revert: schemas/dashboard_public/tables/actions/columns/slug/alterations/alt0000000759 from pg

BEGIN;
ALTER TABLE "dashboard_public".actions DROP CONSTRAINT actions_slug_chk;
COMMIT;  

