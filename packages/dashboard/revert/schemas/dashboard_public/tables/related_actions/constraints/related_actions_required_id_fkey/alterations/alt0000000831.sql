-- Revert: schemas/dashboard_public/tables/related_actions/constraints/related_actions_required_id_fkey/alterations/alt0000000831 from pg

BEGIN;
COMMENT ON CONSTRAINT related_actions_required_id_fkey ON "dashboard_public".related_actions IS NULL;
COMMIT;  

