# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JsonEnv < Formula
    desc "json_env is dotenv, but with JSON." 
    homepage "https://github.com/brodo/json_env"
    url "https://github.com/brodo/json_env/archive/refs/tags/v1.0.22.zip"
    sha256 "1e5393ad1a561e217b14d3d929f2222c1ec9c4a7ff7fff4d05f4b394dbf149c7"
    version "1.0.22"
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/json_env"
    end
  end