/*
  Warnings:

  - Made the column `congressmanId` on table `PartyHistory` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "PartyHistory" ALTER COLUMN "congressmanId" SET NOT NULL;
