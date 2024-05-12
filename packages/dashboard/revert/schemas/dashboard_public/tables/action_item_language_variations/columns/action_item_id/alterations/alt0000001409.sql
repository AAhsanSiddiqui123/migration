-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/action_item_id/alterations/alt0000001409 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations 
    ALTER COLUMN action_item_id DROP NOT NULL;


COMMIT;  

