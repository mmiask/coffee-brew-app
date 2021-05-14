// time in seconds
// volume in g
// temperature in Celsius

export interface Brew {
  method: 'Aeropress' | 'Drip' | 'French Press',
  coffee: {
    roast?: 'dark' | 'medium' | 'light',
    grindSize: 'extra-coarse' | 'coarse' | 'medium-coarse' | 'medium' | 'medium-fine' | 'fine' | 'fine' | 'extra-fine', //TODO
    amount: number,
  },
  steps: Step[]
}

interface Step  {
  addCoffee?: Brew['coffee']['amount']
  addWater?: {
    amount: number,
    duration?: number
    temperature: number | 'boiling'
  },
  stir?: {
    count?: number,
    duration?: number
    technique?: 'stir' | 'swirl',
  },
  press?: {
    time: number,
    pressure?: number // ??? TODO
  },
  bloomTime?: number,
  steepTime?: number,
}