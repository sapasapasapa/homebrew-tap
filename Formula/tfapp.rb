# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfapp < Formula
  desc "A TUI Terraform management application"
  homepage "https://github.com/sapasapasapa/tfapp"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sapasapasapa/tfapp/releases/download/v0.4.0/tfapp_Darwin_x86_64.zip"
      sha256 "b272aa64d39d361d1e1fd69b88599d58dea5092dae3e46fb18fcf637908c118b"

      def install
        bin.install "tfapp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sapasapasapa/tfapp/releases/download/v0.4.0/tfapp_Darwin_arm64.zip"
      sha256 "b313e4c7e9b0d3ca293eed803d2d45df0f75448e4bc5c84784d9b8ff89f33e85"

      def install
        bin.install "tfapp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sapasapasapa/tfapp/releases/download/v0.4.0/tfapp_Linux_x86_64.tar.gz"
        sha256 "e75980165aa156ef41e53b695e803d694b89a65df3897b544639d73fd42191a8"

        def install
          bin.install "tfapp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sapasapasapa/tfapp/releases/download/v0.4.0/tfapp_Linux_arm64.tar.gz"
        sha256 "38119769b761f5c9f7b8c63c54655a07da60c5b4031cfa1102608ebe1192ed8d"

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
