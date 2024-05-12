-- Revert: schemas/dashboard_public/tables/related_actions/columns/owner_id/alterations/alt0000000828 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

