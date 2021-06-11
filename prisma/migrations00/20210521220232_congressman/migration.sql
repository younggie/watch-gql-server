/*
  Warnings:

  - Added the required column `congressmanId` to the `Bill` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Bill" ADD COLUMN     "congressmanId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "Congressman" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "eng_name" TEXT NOT NULL,
    "chn_name" TEXT NOT NULL,
    "gender" TEXT,
    "birth_where" TEXT,
    "birth_date" TEXT,
    "email" TEXT,
    "homepage" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),

    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Bill" ADD FOREIGN KEY ("congressmanId") REFERENCES "Congressman"("id") ON DELETE CASCADE ON UPDATE CASCADE;
