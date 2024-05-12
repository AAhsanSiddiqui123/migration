-- Deploy: schemas/dashboard_public/tables/track_actions/columns/is_required/alterations/alt0000000942 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/columns/is_required/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".track_actions.is_required IS E'required to progress';
COMMIT;
