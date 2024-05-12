-- Revert: schemas/dashboard_public/tables/message_groups/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

