# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JsonEnv < Formula
    desc "json_env is dotenv, but with JSON." 
    homepage "https://github.com/brodo/json_env"
    url "https://github.com/brodo/json_env/releases/download/v1.0.18/json_env-v1.0.18-x86_64-macos.tar.xz"
    sha256 "f110e9d79f2aace74b6ceabed4eb43b452fa8fb988302907f15d3a6afcf86b10"
    version "1.0.18"
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/json_env"
    end
  end