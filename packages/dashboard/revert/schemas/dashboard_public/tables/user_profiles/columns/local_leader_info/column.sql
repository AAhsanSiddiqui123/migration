-- Revert: schemas/dashboard_public/tables/user_profiles/columns/local_leader_info/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles DROP COLUMN local_leader_info;
COMMIT;  

