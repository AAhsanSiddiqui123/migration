-- Revert: schemas/dashboard_public/tables/users/alterations/alt0000000009 from pg

BEGIN;


ALTER TABLE "dashboard_public".users
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

