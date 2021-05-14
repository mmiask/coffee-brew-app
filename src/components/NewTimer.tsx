import * as React from 'react';

export const NewTimer: React.FC = () => {
  const [ timeLeft, setTimeLeft ] = React.useState<number>(20);
  const [ isOn, setIsOn ] = React.useState<boolean>(false);

  function handleClick() {
    setIsOn(true);
  }

  React.useEffect(() => {
    if (timeLeft > 0 && isOn) {
      setTimeout(() => {
        setTimeLeft(timeLeft - 1)
      }, 1000);
    }

    if (timeLeft === 0 && isOn) {
      setIsOn(false);
    }
  }, [ timeLeft, isOn ])


  return (
    <div>
      <div>{timeLeft}</div>
      <button onClick={handleClick} className="bg-yellow-500">Start</button>
    </div>
  );
}