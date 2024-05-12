-- Revert: schemas/dashboard_public/tables/groups/constraints/groups_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".groups 
    DROP CONSTRAINT groups_pkey;

COMMIT;  

