-- Revert: schemas/dashboard_public/tables/groups/constraints/groups_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".groups 
    DROP CONSTRAINT groups_owner_id_fkey;

COMMIT;  

