/*
  Warnings:

  - You are about to drop the column `billNo` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `billKind` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `billName` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `billfrom` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `billClass` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `billDate` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `committeeId` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `billResult` on the `Bill` table. All the data in the column will be lost.
  - You are about to drop the column `billUrl` on the `Bill` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[bill_no]` on the table `Bill` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `bill_no` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bill_kind` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bill_name` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `who` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bill_class` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bill_date` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `comm_seq` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bill_result` to the `Bill` table without a default value. This is not possible if the table is not empty.
  - Added the required column `match_url` to the `Bill` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Bill.billNo_unique";

-- AlterTable
ALTER TABLE "Bill" DROP COLUMN "billNo",
DROP COLUMN "billKind",
DROP COLUMN "billName",
DROP COLUMN "billfrom",
DROP COLUMN "billClass",
DROP COLUMN "billDate",
DROP COLUMN "committeeId",
DROP COLUMN "billResult",
DROP COLUMN "billUrl",
ADD COLUMN     "bill_no" TEXT NOT NULL,
ADD COLUMN     "bill_kind" INTEGER NOT NULL,
ADD COLUMN     "bill_name" TEXT NOT NULL,
ADD COLUMN     "who" TEXT NOT NULL,
ADD COLUMN     "bill_class" TEXT NOT NULL,
ADD COLUMN     "bill_date" TEXT NOT NULL,
ADD COLUMN     "comm_seq" INTEGER NOT NULL,
ADD COLUMN     "bill_result" TEXT NOT NULL,
ADD COLUMN     "match_url" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Bill.bill_no_unique" ON "Bill"("bill_no");
