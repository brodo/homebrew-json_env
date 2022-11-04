# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JsonEnv < Formula
    desc "json_env is dotenv, but with JSON." 
    homepage "https://github.com/brodo/json_env"
    url "https://github.com/brodo/json_env/archive/refs/tags/v1.3.0.zip"
    sha256 "8e0e4f16d54596ea4a83abde54583a26723e7ca0d02617de9277af52bc10b72c"
    version "1.3.0"
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/json_env"
    end
  end