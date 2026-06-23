func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPay = price / (12 * 5)
    if monthlyPay <= monthlyBudget {
        return "Yes! I'm getting a \(vehicle)"
    } else if monthlyPay <= monthlyBudget * (1 + 10 / 100) {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
 if wheels == 2 || wheels == 3 {
   return "You will need a motorcycle license for your vehicle"
 } else if wheels == 4 || wheels == 6 {
   return "You will need an automobile license for your vehicle"
 } else if wheels == 18 {
   return "You will need a commercial trucking license for your vehicle"
 } else {
   return "We do not issue licenses for those types of vehicles"
 }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    if yearsOld < 3 {
        return originalPrice - Int(Double(originalPrice) * (20 / 100.0))
    } else if yearsOld >= 3 && yearsOld < 10 {
        return originalPrice - Int(Double(originalPrice) * (30 / 100.0))
    } else {
        return originalPrice - Int(Double(originalPrice) * (50 / 100.0))
    }
}
