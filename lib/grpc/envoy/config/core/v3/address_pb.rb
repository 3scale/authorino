# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: envoy/config/core/v3/address.proto

require 'google/protobuf'

require 'envoy/config/core/v3/socket_option_pb'
require 'google/protobuf/wrappers_pb'
require 'udpa/annotations/status_pb'
require 'udpa/annotations/versioning_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("envoy/config/core/v3/address.proto", :syntax => :proto3) do
    add_message "envoy.config.core.v3.Pipe" do
      optional :path, :string, 1
      optional :mode, :uint32, 2
    end
    add_message "envoy.config.core.v3.EnvoyInternalAddress" do
      oneof :address_name_specifier do
        optional :server_listener_name, :string, 1
      end
    end
    add_message "envoy.config.core.v3.SocketAddress" do
      optional :protocol, :enum, 1, "envoy.config.core.v3.SocketAddress.Protocol"
      optional :address, :string, 2
      optional :resolver_name, :string, 5
      optional :ipv4_compat, :bool, 6
      oneof :port_specifier do
        optional :port_value, :uint32, 3
        optional :named_port, :string, 4
      end
    end
    add_enum "envoy.config.core.v3.SocketAddress.Protocol" do
      value :TCP, 0
      value :UDP, 1
    end
    add_message "envoy.config.core.v3.TcpKeepalive" do
      optional :keepalive_probes, :message, 1, "google.protobuf.UInt32Value"
      optional :keepalive_time, :message, 2, "google.protobuf.UInt32Value"
      optional :keepalive_interval, :message, 3, "google.protobuf.UInt32Value"
    end
    add_message "envoy.config.core.v3.BindConfig" do
      optional :source_address, :message, 1, "envoy.config.core.v3.SocketAddress"
      optional :freebind, :message, 2, "google.protobuf.BoolValue"
      repeated :socket_options, :message, 3, "envoy.config.core.v3.SocketOption"
    end
    add_message "envoy.config.core.v3.Address" do
      oneof :address do
        optional :socket_address, :message, 1, "envoy.config.core.v3.SocketAddress"
        optional :pipe, :message, 2, "envoy.config.core.v3.Pipe"
        optional :envoy_internal_address, :message, 3, "envoy.config.core.v3.EnvoyInternalAddress"
      end
    end
    add_message "envoy.config.core.v3.CidrRange" do
      optional :address_prefix, :string, 1
      optional :prefix_len, :message, 2, "google.protobuf.UInt32Value"
    end
  end
end

module Envoy
  module Config
    module Core
      module V3
        Pipe = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.Pipe").msgclass
        EnvoyInternalAddress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.EnvoyInternalAddress").msgclass
        SocketAddress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.SocketAddress").msgclass
        SocketAddress::Protocol = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.SocketAddress.Protocol").enummodule
        TcpKeepalive = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.TcpKeepalive").msgclass
        BindConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.BindConfig").msgclass
        Address = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.Address").msgclass
        CidrRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.config.core.v3.CidrRange").msgclass
      end
    end
  end
end
