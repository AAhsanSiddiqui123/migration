-- Revert: schemas/dashboard_public/tables/track_groups/constraints/track_groups_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups 
    DROP CONSTRAINT track_groups_pkey;

COMMIT;  

