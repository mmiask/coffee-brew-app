// time in seconds
// volume in g
// temperature in Celsius

export type Brew = {
  method: 'Aeropress' | 'Drip' | 'French Press',
  totalBrewTime: number;
  bloomTime: number,
  steepTime: number,
  stir: {
    count: number,
    duration: number
  },
  addWater: {
    amount: number,
    duration: number | 'instantly'
    temperature: number
  }
  coffee: {
    roast: 'dark' | 'medium' | 'light',
    grindSize: string, //TODO
    amount: number,
  },
  pressTime: {
    time: number,
    pressure: number // ??? TODO
  }
}