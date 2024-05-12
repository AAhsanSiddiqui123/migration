-- Revert: schemas/dashboard_public/tables/user_connections/alterations/alt0000000609 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

