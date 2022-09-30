# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JsonEnv < Formula
    desc "json_env is dotenv, but with JSON." 
    homepage "https://github.com/brodo/json_env"
    url "https://github.com/brodo/json_env/archive/refs/tags/v1.1.0.zip"
    sha256 "a9c8d79e435a73dd902c6d23da69c8f6abdf017ad17553766bbe0c4cb4538f41"
    version "1.1.0"
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/json_env"
    end
  end