-- Revert: schemas/dashboard_public/tables/track_actions/columns/is_required/alterations/alt0000000940 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN is_required DROP NOT NULL;


COMMIT;  

