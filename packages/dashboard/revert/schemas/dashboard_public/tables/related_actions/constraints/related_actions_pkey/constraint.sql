-- Revert: schemas/dashboard_public/tables/related_actions/constraints/related_actions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    DROP CONSTRAINT related_actions_pkey;

COMMIT;  

