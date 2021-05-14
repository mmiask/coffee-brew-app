import { NewTimer } from 'components/Timer';
import React from 'react';
import { Brew } from 'types';
import './App.css';

const AeropressBasic: Brew = {
  method: 'Aeropress',
  coffee: {
    amount: 16,
    grindSize: 'medium-fine',
    roast: 'light'
  },
  steps: [
    { addCoffee: 16 },
    { addWater: { amount: 250, temperature: 'boiling' } },
    { steepTime: 90 },
    { stir: { count: 3, technique: 'swirl' } },
    { steepTime: 30 },
    { press: { time: 30 } }
  ],
}

export const App: React.FC = () => {
  return (
    <div>
      <NewTimer />
    </div>
  );
}