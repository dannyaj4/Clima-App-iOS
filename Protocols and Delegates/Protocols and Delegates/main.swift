
protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHendler {
    var delegate: AdvanceLifeSupport?
    
    func assessSituation(){
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
    
}

struct Paramedic: AdvanceLifeSupport {
    
    init(handler:EmergencyCallHendler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest comperesions, 30 per second.")
    }
}

class Doctor: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHendler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest comperesions, 30 per second.")
    }
    
    func useStethoscope() {
        print("Listening for heart sounds.")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill(){
        print("Whirr...")
    }
}

let emilio = EmergencyCallHendler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()

