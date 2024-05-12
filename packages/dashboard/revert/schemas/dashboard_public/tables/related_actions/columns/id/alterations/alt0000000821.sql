-- Revert: schemas/dashboard_public/tables/related_actions/columns/id/alterations/alt0000000821 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

