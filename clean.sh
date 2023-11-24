echo "Cleaning Mac"
echo "Please wait until it finishes..."

echo "Cleaning cached data, xCode logs and simulators logs"

sudo rm -rf ~/Library/Developer/Xcode/DerivedData && sudo rm -rf ~/Library/Logs/CoreSimulator && sudo rm -rf ~/Library/Developer/Xcode/IOS DeviceSupport &&  sudo rm -rf ~/Library/Caches/com.apple.dt.Xcode && sudo rm -rf ~/Library/Caches

echo "Cleaning process finished"

echo "Want to delete the archived unused data from xCode too? Make sure they are all already backed up"

select yn in "Yes" "No"; do
	case $yn in
		Yes ) 
			echo "Deleting archived data from xCode..."
			sudo rm -r ~/Library/Developer/Xcode/Archives/
			echo "Deleting archived data from xCode process finished!"
			break;;
		No )
			echo "Finishing script!"
			exit;
	esac
done;

