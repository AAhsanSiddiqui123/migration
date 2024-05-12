-- Revert: schemas/dashboard_public/tables/track_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".track_types FROM authenticated;
COMMIT;  

