-- Revert: schemas/dashboard_public/tables/groups/columns/id/alterations/alt0000000272 from pg

BEGIN;


ALTER TABLE "dashboard_public".groups 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

