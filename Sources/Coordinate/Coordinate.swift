import Foundation

public class Coordinate {
    public static var shared: Coordinate = Coordinate()

    /// Convert DMM to DMS
    public func Dmm2Dms(degree: Double, minute: Double) -> (degree: Double, minute: Double, seconds: Double) {
        let minInteger = Double(Int(minute))
        let minFraction = minute.truncatingRemainder(dividingBy: 1.0)
        return (degree, minInteger, minFraction * 60.0)
    }
    /// Convert DMS to DMM
    public func Dms2Dmm(degree: Double, minute: Double, seconds: Double) -> (degree: Double, minute: Double) {
        return (degree, minute + (seconds / 60.0))
    }

    /// Convert DMS to DEG
    public func Dms2Deg(degree: Double, minute: Double, seconds: Double) -> Double {
        return degree + (minute / 60.0) + (seconds / 3600)
    }
    /// Convert DEG to DMS
    public func Deg2Dms(degree: Double) -> (degree: Double, minute: Double, seconds: Double) {
        let convertedDegree = Double(Int(degree))
        let degreeFraction = degree.truncatingRemainder(dividingBy: 1.0)
        
        let minute = Double(Int(degreeFraction * 60.0))
        let seconds = ((degreeFraction * 60.0).truncatingRemainder(dividingBy: 1.0)) * 60
        
        return (convertedDegree, minute, seconds)
    }

    /// Convert DMM to DEG
    public func Dmm2Deg(degree: Double, minute: Double) -> Double {
        let dmm = Dmm2Dms(degree: degree, minute: minute)
        return Dms2Deg(degree: dmm.degree, minute: dmm.minute, seconds: dmm.seconds)
    }
    /// Convert DEG to DMM
    public func Deg2Dmm(degree: Double) -> (degree: Double, minute: Double) {
        let dms = Deg2Dms(degree: degree)
        return Dms2Dmm(degree: dms.degree, minute: dms.minute, seconds: dms.seconds)
    }
}
