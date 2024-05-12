-- Revert: schemas/dashboard_public/tables/goals/columns/slug/alterations/alt0000000740 from pg

BEGIN;
ALTER TABLE "dashboard_public".goals DROP CONSTRAINT goals_slug_chk;
COMMIT;  

