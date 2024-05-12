-- Revert: schemas/dashboard_public/tables/related_actions/constraints/related_actions_owner_id_fkey/alterations/alt0000000829 from pg

BEGIN;
COMMENT ON CONSTRAINT related_actions_owner_id_fkey ON "dashboard_public".related_actions IS NULL;
COMMIT;  

