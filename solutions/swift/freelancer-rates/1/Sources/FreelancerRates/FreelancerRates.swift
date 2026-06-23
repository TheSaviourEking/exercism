func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return dailyRateFrom(hourlyRate: hourlyRate) * 22 * (1 - discount / 100)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let discountedDailyRate = dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount / 100)
  let daysIn = budget / discountedDailyRate
  return Double(Int(daysIn))
}
