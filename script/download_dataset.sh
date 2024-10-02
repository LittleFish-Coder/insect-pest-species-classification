# command to run: bash download_CelebDF_V2.sh
# If you are unable to download the dataset using the command
# you can directly download the dataset from the following link:
# https://drive.google.com/uc?id=1EL9TA-J5XsiBR4M3nQkMR_e-2dP48eQN

FILE_ID="1EL9TA-J5XsiBR4M3nQkMR_e-2dP48eQN"
FILE_NAME="ip102_v1.1.tar"
DATASET_DIR="dataset"

# Check if gdown is installed, and install it if not
if ! command -v gdown &> /dev/null
then
    echo "gdown could not be found, installing..."
    pip install gdown
else
    echo "gdown is already installed"
fi

# Download the dataset if it does not exist
echo "Downloading IP102 dataset..."
if [ ! -f $FILE_NAME ]; then
    gdown --id $FILE_ID
else
    echo "IP102 dataset already exists"
fi

# Extract the dataset
echo "Extracting IP102 dataset..."
tar -xvf $FILE_NAME -C $DATASET_DIR