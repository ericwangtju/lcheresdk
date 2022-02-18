
##### Constants
BU_NAME="LCHereSDK"

##### Functions

usage() {
    echo "usage: replace.sh [bu_name]"
}

replace_bu_name() {
	echo "1. 替换文件中所有的 LCHereSDK 成 $BU_NAME"
	ack -l LCHereSDK | xargs perl -pi -E "s/LCHereSDK/$BU_NAME/g"

	echo "2. 将 BusinessUnitLCHereSDK.podspec 替换成 $BU_NAME.podspec"
	mv BusinessUnitLCHereSDK.podspec $BU_NAME.podspec

	echo "3. 将 BusinessUnit/ 文件夹替换成 $BU_NAME/"
	mv BusinessUnit/ $BU_NAME/

	echo "4. 将 $BU_NAME/Classes/BusinessUnitLCHereSDK.swift 替换成 $BU_NAME/Classes/$BU_NAME.swift"
	mv $BU_NAME/Classes/BusinessUnitLCHereSDK.swift $BU_NAME/Classes/$BU_NAME.swift
}



##### Main
if [ "$1" != "" ]; then
    echo "BusinessUnit name is: $1"
    BU_NAME=$1
    replace_bu_name
else
    usage
fi
