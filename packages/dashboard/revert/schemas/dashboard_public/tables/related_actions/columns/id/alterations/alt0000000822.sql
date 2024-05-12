-- Revert: schemas/dashboard_public/tables/related_actions/columns/id/alterations/alt0000000822 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

