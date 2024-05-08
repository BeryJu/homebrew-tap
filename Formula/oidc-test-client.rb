# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OidcTestClient < Formula
  desc "Small, OIDC Client, to debug and test OIDC providers"
  homepage "https://github.com/beryju/oidc-test-client"
  version "2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v2.2/oidc-test-client_darwin_amd64"
      sha256 "062e8aa68b1599bff910578e2b7987538a84ed81d79a9db764dcf7d571eb586d"

      def install
        bin.install "oidc-test-client_darwin_amd64" => "oidc-test-client"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v2.2/oidc-test-client_darwin_arm64"
      sha256 "9dd0d91a267685b82e39f3d80ae84720246be69d98f86122b9a0b507fd82dadf"

      def install
        bin.install "oidc-test-client_darwin_arm64" => "oidc-test-client"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v2.2/oidc-test-client_linux_amd64"
      sha256 "d4d140830814fab13164617a94eb744723ce1a73ac0f257dc54dd9fa7938aaed"

      def install
        bin.install "oidc-test-client_linux_amd64" => "oidc-test-client"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v2.2/oidc-test-client_linux_armv6"
      sha256 "154f87fbb2de715efa333cfc605e805d9d422f53f01c61a7cdc8ddc667102d13"

      def install
        bin.install "oidc-test-client_linux_armv6" => "oidc-test-client"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/BeryJu/oidc-test-client/releases/download/v2.2/oidc-test-client_linux_arm64"
      sha256 "30cecf69aade99480095ae9aed427233d7b2c7e9e61327652742e9dccaeaac02"

      def install
        bin.install "oidc-test-client_linux_arm64" => "oidc-test-client"
      end
    end
  end
end
