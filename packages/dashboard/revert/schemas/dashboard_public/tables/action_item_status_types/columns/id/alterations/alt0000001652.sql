-- Revert: schemas/dashboard_public/tables/action_item_status_types/columns/id/alterations/alt0000001652 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

