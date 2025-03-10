# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfapp < Formula
  desc "A TUI Terraform management application"
  homepage "https://github.com/sapasapasapa/tfapp"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sapasapasapa/tfapp/releases/download/v0.2.8/tfapp_Darwin_x86_64.zip"
      sha256 "460d48adb8a2b188d355f0fffb2607033e41ef78b30ea70f3464eecc00954abe"

      def install
        bin.install "tfapp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sapasapasapa/tfapp/releases/download/v0.2.8/tfapp_Darwin_arm64.zip"
      sha256 "5c11224526a9d8946ccb09b71cd0e0b4f0d0411bc15653f96e36cb1a2604ad4b"

      def install
        bin.install "tfapp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sapasapasapa/tfapp/releases/download/v0.2.8/tfapp_Linux_x86_64.tar.gz"
        sha256 "263c53a71ab91af1db7c7a952d0d9a7b5150131e341f0b0fdd53769c12c9a150"

        def install
          bin.install "tfapp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sapasapasapa/tfapp/releases/download/v0.2.8/tfapp_Linux_arm64.tar.gz"
        sha256 "2d17b806ce2901fa5017fb762023c2d26b3bcb0173b6e10c20c30e0248ad62ab"

        def install
          bin.install "tfapp"
        end
      end
    end
  end

  test do
    system "#{bin}/tfapp", "--version"
  end
end
