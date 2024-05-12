-- Revert: schemas/dashboard_memberships_public/tables/members/indexes/members_actor_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".members_actor_id_idx;
COMMIT;  

