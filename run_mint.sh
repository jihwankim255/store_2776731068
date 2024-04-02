APPNAME="store_2776731068"

ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

snarkos developer execute "${APPNAME}.aleo" mint \
  aleo1t4d6n8du9rs2x8555pc6s3emuhyqm2r75p4m322t2j02sw0a3vrsnxxrwv \
  10000u64 \
  --private-key "${PRIVATE_KEY}" \
  --query "https://api.explorer.aleo.org/v1" \
  --priority-fee 3000000 \
  --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" \