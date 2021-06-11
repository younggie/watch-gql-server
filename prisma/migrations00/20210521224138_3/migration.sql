/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Congressman` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Congressman` table. All the data in the column will be lost.
  - Added the required column `update_date` to the `Bill` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Bill" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "create_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_date" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Congressman" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "create_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_date" TIMESTAMP(3);
