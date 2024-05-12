-- Revert: schemas/dashboard_public/tables/user_viewed_actions/indexes/user_viewed_actions_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_viewed_actions_owner_id_idx;
COMMIT;  

