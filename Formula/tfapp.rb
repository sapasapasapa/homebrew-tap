# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfapp < Formula
  desc "A TUI Terraform management application"
  homepage "https://github.com/sapasapasapa/tfapp"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sapasapasapa/tfapp/releases/download/v0.3.0/tfapp_Darwin_x86_64.zip"
      sha256 "4e9a57afabe3d68be332c3c5ac2c4fb54895cbefa663a0b9229b77b8125bc357"

      def install
        bin.install "tfapp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sapasapasapa/tfapp/releases/download/v0.3.0/tfapp_Darwin_arm64.zip"
      sha256 "5bf15680674fb1633d366efe07d34d67d0474f65c1f7ee1cd7a1eadf92804316"

      def install
        bin.install "tfapp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sapasapasapa/tfapp/releases/download/v0.3.0/tfapp_Linux_x86_64.tar.gz"
        sha256 "5094a6ed87fe3b9dea5cdf91fc295e7425e56c7e152427c5401c5c4aeb595bc7"

        def install
          bin.install "tfapp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sapasapasapa/tfapp/releases/download/v0.3.0/tfapp_Linux_arm64.tar.gz"
        sha256 "9c200bdc141441d5cf97fa6771ccd19bdbe3d514444315515f0a763b1699e9a6"

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
