import * as React from 'react';
// import { Brew } from 'types';

// interface TimerProps {
//   recipe: Brew,
// }

export const NewTimer: React.FC = () => {
  const [ time, setTime ] = React.useState<number>(0);
  const [ isOn, setIsOn ] = React.useState<boolean>(false);
  const [ currentStep, setCurrentStep ] = React.useState<string>('add 200ml of water and press start');

  function handleClick() {
    setIsOn(true);
  }

  React.useEffect(() => {
    if (time < 150 && isOn) {
      if (time > 0 && time <= 90 ) {
        setCurrentStep('steep for 1,5 minutes');
      }
      if (time > 90 && time <= 120) {
        setCurrentStep('swirl 3 times and steep for another 30 seconds')
      }
      if (time > 120) {
        setCurrentStep('press the plunger for 30 seconds')
      }
      setTimeout(() => {
        setTime(time + 1)
      }, 1000);
    }

    if (time === 150 && isOn) {
      setIsOn(false);
      setCurrentStep('enjoy your coffee!')
    }
  }, [ time, isOn ])

  return (
    <div>
      <div>{time}</div>
      <button onClick={handleClick} className="bg-yellow-500">Start</button>
      <div>{currentStep}</div>
    </div>
  );
  
}
