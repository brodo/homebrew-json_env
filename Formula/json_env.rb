# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JsonEnv < Formula
    desc "json_env is dotenv, but with JSON." 
    homepage "https://github.com/brodo/json_env"
    url "https://github.com/brodo/json_env/archive/refs/tags/v1.2.1.zip"
    sha256 "2bb0430c9b5bb1b94f210924396a07f917ff03cc2d7b2dd96f4d7619131703ed"
    version "1.2.1"
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/json_env"
    end
  end