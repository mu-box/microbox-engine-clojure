
directories=(
  "/tmp/code"
  "/tmp/app"
  "/tmp/cache"
  "/data"
  "/data/etc"
  "/data/etc/env.d"
)

prepare_environment() {
  # create required directories
  for dir in ${directories[@]}; do
    mkdir -p $dir
    sudo chown -R gomicro $dir
  done
}

prepare_pkgsrc() {
  rm -f /data/var/db/pkgin/pkgin.db
  /data/bin/pkgin -y up

  sudo chown -R gomicro /data/var/db/pkgin
}

path() {
  paths=(
    "/data/sbin"
    "/data/bin"
    "/opt/gomicro/sbin"
    "/opt/gomicro/bin"
    "/opt/gomicro/bin"
    "/usr/local/sbin"
    "/usr/local/bin"
    "/usr/sbin"
    "/usr/bin"
    "/sbin"
    "/bin"
  )

  path=""

  for dir in ${paths[@]}; do
    if [[ "$path" != "" ]]; then
      path="${path}:"
    fi

    path="${path}${dir}"
  done

  echo $path
}
