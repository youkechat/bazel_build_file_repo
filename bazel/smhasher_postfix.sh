#! /bin/bash
cp $BUILD_TMPDIR/libSMHasherSupport.a $INSTALLDIR/lib 
cd $EXT_BUILD_ROOT/external/smhasher
for file in $(ls {,**/}*.h); do 
  cp --parents -rf $file $INSTALLDIR/include
done
cd -
