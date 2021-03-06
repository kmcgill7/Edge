#if os(Linux)

import Glibc
public let systemBind = Glibc.bind
public let systemAccept = Glibc.accept
public let systemListen = Glibc.listen
public let systemConnect = Glibc.connect
public let systemClose = Glibc.close

#else

import Darwin
public let systemBind = Darwin.bind
public let systemAccept = Darwin.accept
public let systemListen = Darwin.listen
public let systemConnect = Darwin.connect
public let systemClose = Darwin.close

#endif


public struct SocketType {

    public static let stream = SocketType(rawValue: SOCK_STREAM)
    public static let datagram = SocketType(rawValue: SOCK_DGRAM)
    public static let seqPacket = SocketType(rawValue: SOCK_SEQPACKET)
    public static let raw = SocketType(rawValue: SOCK_RAW)
    public static let reliableDatagram = SocketType(rawValue: SOCK_RDM)
    
    public let rawValue: Int32
    
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
}

public struct AddressFamily {
    public static let unix = AddressFamily(rawValue: AF_UNIX)
    public static let inet = AddressFamily(rawValue: AF_INET)
    public static let inet6 = AddressFamily(rawValue: AF_INET6)
    public static let ipx = AddressFamily(rawValue: AF_IPX)
    public static let netlink = AddressFamily(rawValue: AF_APPLETALK)
    
    public let rawValue: Int32
    
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
}

public typealias Port = UInt16
