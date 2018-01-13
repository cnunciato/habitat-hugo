pkg_name="hugo"
pkg_origin="cnunciato"
pkg_version="0.32.4"
pkg_maintainer="Christian Nunciato <chris@nunciato.org>"
pkg_license=("MIT")
pkg_description="Hugo is one of the most popular open-source static site generators."
pkg_source="https://github.com/gohugoio/hugo/releases/download/v${pkg_version}/hugo_${pkg_version}_Linux-64bit.tar.gz"
pkg_shasum="004e437e4afa7a3556019b4215767d6823435d9a4c5b6f82715b93ac93bea44f"
pkg_deps=(core/go)
pkg_bin_dirs=(bin)
pkg_upstream_url="https://gohugo.io"

do_prepare() {
  export GOPATH=$HAB_CACHE_SRC_PATH
}

do_build() {
  return 0
}

do_install() {
  cp "$HAB_CACHE_SRC_PATH/hugo" "$pkg_prefix/bin/"
}
