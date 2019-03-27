# Watch and rebuild
watch target='exe':
  watchexec -w lib -w bin './run_build.sh {{target}}'

# Build
build target='exe':  
  './run_build.sh {{target}}'