-- Revert: schemas/dashboard_public/tables/role_types/alterations/alt0000000014 from pg

BEGIN;


ALTER TABLE "dashboard_public".role_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

