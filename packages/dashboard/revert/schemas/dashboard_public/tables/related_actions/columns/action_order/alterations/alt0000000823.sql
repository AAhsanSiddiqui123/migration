-- Revert: schemas/dashboard_public/tables/related_actions/columns/action_order/alterations/alt0000000823 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN action_order DROP DEFAULT;

COMMIT;  

