P1=`pwd`
sed -i "s/0x00130101/0x00120102/g" `grep -i 0x00130101 $P1/* -r -l`
sed -i "s/001301/001201/g" `grep -i '"001301"' $P1/* -r -l`

sed -i "s/mr13u-v1/mr12u-v2/g" `grep -i mr13u-v1 $P1/* -r -l`
sed -i "s/MR13U_V1/MR12U_V2/g" `grep -i MR13U_V1 $P1/* -r -l`
sed -i "s/mr13uv1/mr12uv2/g" `grep -i mr13uv1 $P1/* -r -l`

A1="MR13U v1"
B1="MR12U v2"
sed -i "s/$A1/$B1/g" `grep -i "$A1" $P1/* -r -l`

A2="TP-LINK TL-MR13U v1"
B2="TP-LINK TL-MR12U v2"
sed -i "s/$A2/$B2/g" `grep -i "$A2" $P1/* -r -l`

sed -i "s/MR13U/MR12U/g" `grep -i MR13U $P1/* -r -l`
sed -i "s/mr13u/mr12u/g" `grep -i mr13u $P1/* -r -l`
cp $P1/target/linux/ar71xx/files/arch/mips/ath79/mach-tl-mr13u.c $P1/target/linux/ar71xx/files/arch/mips/ath79/mach-tl-mr12u.c