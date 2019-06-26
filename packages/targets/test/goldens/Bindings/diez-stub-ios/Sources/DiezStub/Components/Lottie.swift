import Foundation
import CoreGraphics

@objc(DEZLottie)
public final class Lottie: NSObject, Decodable {
    @objc public internal(set) var file: File
    @objc public internal(set) var loop: Bool
    @objc public internal(set) var autoplay: Bool

    init(
        file: File,
        loop: Bool,
        autoplay: Bool
    ) {
        self.file = file
        self.loop = loop
        self.autoplay = autoplay
    }
}

extension Lottie: ReflectedCustomStringConvertible {
    public override var description: String {
        return reflectedDescription
    }
}