-- Revert: schemas/dashboard_public/tables/notifications/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

