-- Revert: schemas/dashboard_public/tables/action_variations/constraints/action_variations_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations 
    DROP CONSTRAINT action_variations_owner_id_fkey;

COMMIT;  

