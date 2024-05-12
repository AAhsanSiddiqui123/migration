-- Revert: schemas/dashboard_public/tables/user_connections/columns/requester_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections DROP COLUMN requester_id;
COMMIT;  

