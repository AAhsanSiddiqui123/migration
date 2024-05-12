-- Revert: schemas/dashboard_public/tables/track_actions/columns/is_required/alterations/alt0000000942 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".track_actions.is_required IS NULL;
COMMIT;  

