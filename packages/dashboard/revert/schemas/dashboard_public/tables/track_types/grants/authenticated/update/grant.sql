-- Revert: schemas/dashboard_public/tables/track_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".track_types FROM authenticated;
COMMIT;  

