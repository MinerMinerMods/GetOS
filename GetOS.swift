struct Runtime{
  enum OS{ // These names are what `#if os()` recives
    case macOS
    case iOS
    case watchOS
    case tvOS
    case visonOS
    case Linux // may contain  Debian or Ubuntu Derivitaves but is not mentioned
    case Windows
    case WindowsCygnus
    case WindowsMinGW
    case Android
    case FreeBSD
    case OpenBSD
    case PS4
    case Haiku
    case WASI
    case UnknownOS //Oops, The OS requested is not in the database, please send a Issue Stating your OS and Its Liscenser
    func getOwner() -> Licenser{
      switch self{
        case .visionOS: fallthrough
        case .tvOS: fallthrough
        case .watchOS: fallthrough
        case .MacOS: fallthrough
        case .iOS: return Licenser.Apple
        case .Linux: return Licenser.Linux
        case .WindowsMinGW: fallthrough
        case .WindowsCygnus: fallthrough
        case .Windows: return Licenser.Microsoft
        case .Android: return Licenser.Google
        case .FreeBSD:fallthrough
        case .OpenBSD:return Licenser.BSD
        default: return Licenser.TBD //Oops, The Licenser requested is not in the database, please send a Issue Stating your OS and Its Liscenser
      }
    }
  }
  enum Licenser{
    case Apple // Any Apple OS
    case Linux // Any OS using the Linux Kernal Ignoring OS Families
    case Microsoft // Windows and Variants
    case Google // Google OS
    case Sony // Sony OS
    case BSD // Public Software with BSD license
    case TBD // Unsure of owner
  }
  enum Archetecture{
    case Intel //i386
    // TODO: Finish this code
  }
}
