-- Revert: schemas/dashboard_memberships_public/tables/app_grants/columns/actor_id/alterations/alt0000000129 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

