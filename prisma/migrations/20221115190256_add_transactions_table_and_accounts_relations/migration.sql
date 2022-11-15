-- CreateTable
CREATE TABLE "transactions" (
    "id" SERIAL NOT NULL,
    "debited_account_id" INTEGER NOT NULL,
    "credited_account_id" INTEGER NOT NULL,
    "value" DECIMAL(8,2) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "transactions_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "transactions" ADD CONSTRAINT "transactions_debited_account_id_fkey" FOREIGN KEY ("debited_account_id") REFERENCES "accounts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transactions" ADD CONSTRAINT "transactions_credited_account_id_fkey" FOREIGN KEY ("credited_account_id") REFERENCES "accounts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
