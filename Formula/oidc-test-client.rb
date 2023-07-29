# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OidcTestClient < Formula
  desc "Small, OIDC Client, to debug and test OIDC providers"
  homepage "https://github.com/beryju/oidc-test-client"
  version "1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v1.4/oidc-test-client_darwin_arm64"
      sha256 "6e8cac392e23460b5132ca0ba2f7a8d883e35207247a48de7f49e3689cce26be"

      def install
        bin.install "oidc-test-client_darwin_arm64" => "oidc-test-client"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v1.4/oidc-test-client_darwin_amd64"
      sha256 "7baba4290617ce42d1b00d8a75424838786181a7db16ffe8557f7160721a19d1"

      def install
        bin.install "oidc-test-client_darwin_amd64" => "oidc-test-client"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v1.4/oidc-test-client_linux_arm64"
      sha256 "4573aae57925ffab36156ba60dd1a216275ff9e3d6b9bcc1c3849050230cf8f2"

      def install
        bin.install "oidc-test-client_linux_arm64" => "oidc-test-client"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v1.4/oidc-test-client_linux_amd64"
      sha256 "599f18c9f0e7640e63260773892d1b7aec19d095fc17b2a17730a04bb359f510"

      def install
        bin.install "oidc-test-client_linux_amd64" => "oidc-test-client"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v1.4/oidc-test-client_linux_armv6"
      sha256 "4a5054b4db2f4c6f40a73106f8641ca168c6aeb8ca1a28cd2cb995c290ad7882"

      def install
        bin.install "oidc-test-client_linux_armv6" => "oidc-test-client"
      end
    end
  end
end
