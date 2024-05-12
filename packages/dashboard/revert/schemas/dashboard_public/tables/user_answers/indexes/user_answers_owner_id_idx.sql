-- Revert: schemas/dashboard_public/tables/user_answers/indexes/user_answers_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_answers_owner_id_idx;
COMMIT;  

