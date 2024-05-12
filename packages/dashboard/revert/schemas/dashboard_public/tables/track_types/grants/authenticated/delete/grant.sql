-- Revert: schemas/dashboard_public/tables/track_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".track_types FROM authenticated;
COMMIT;  

