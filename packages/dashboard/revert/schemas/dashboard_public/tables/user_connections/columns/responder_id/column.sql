-- Revert: schemas/dashboard_public/tables/user_connections/columns/responder_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections DROP COLUMN responder_id;
COMMIT;  

