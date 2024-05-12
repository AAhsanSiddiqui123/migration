-- Revert: schemas/dashboard_public/tables/track_actions/alterations/alt0000000936 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

