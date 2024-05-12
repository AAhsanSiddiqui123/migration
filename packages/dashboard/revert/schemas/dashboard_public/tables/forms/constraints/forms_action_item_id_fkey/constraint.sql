-- Revert: schemas/dashboard_public/tables/forms/constraints/forms_action_item_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".forms 
    DROP CONSTRAINT forms_action_item_id_fkey;

COMMIT;  

